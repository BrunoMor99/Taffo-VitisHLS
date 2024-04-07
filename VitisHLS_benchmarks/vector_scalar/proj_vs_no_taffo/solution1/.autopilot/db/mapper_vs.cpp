#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
extern "C" int vs(Byte<4>*, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, float);
extern "C" int apatb_vs_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_A_2, volatile void * __xlx_apatb_param_A_3, volatile void * __xlx_apatb_param_A_4, volatile void * __xlx_apatb_param_A_5, volatile void * __xlx_apatb_param_A_6, volatile void * __xlx_apatb_param_A_7, volatile void * __xlx_apatb_param_A_8, volatile void * __xlx_apatb_param_A_9, volatile void * __xlx_apatb_param_A_10, volatile void * __xlx_apatb_param_A_11, volatile void * __xlx_apatb_param_A_12, volatile void * __xlx_apatb_param_A_13, volatile void * __xlx_apatb_param_A_14, volatile void * __xlx_apatb_param_A_15, volatile void * __xlx_apatb_param_A_16, volatile void * __xlx_apatb_param_A_17, volatile void * __xlx_apatb_param_A_18, volatile void * __xlx_apatb_param_A_19, volatile void * __xlx_apatb_param_A_20, volatile void * __xlx_apatb_param_A_21, volatile void * __xlx_apatb_param_A_22, volatile void * __xlx_apatb_param_A_23, volatile void * __xlx_apatb_param_A_24, volatile void * __xlx_apatb_param_A_25, volatile void * __xlx_apatb_param_A_26, volatile void * __xlx_apatb_param_A_27, volatile void * __xlx_apatb_param_A_28, volatile void * __xlx_apatb_param_A_29, volatile void * __xlx_apatb_param_A_30, volatile void * __xlx_apatb_param_A_31, volatile void * __xlx_apatb_param_A_32, volatile void * __xlx_apatb_param_A_33, volatile void * __xlx_apatb_param_A_34, volatile void * __xlx_apatb_param_A_35, volatile void * __xlx_apatb_param_A_36, volatile void * __xlx_apatb_param_A_37, volatile void * __xlx_apatb_param_A_38, volatile void * __xlx_apatb_param_A_39, volatile void * __xlx_apatb_param_A_40, volatile void * __xlx_apatb_param_A_41, volatile void * __xlx_apatb_param_A_42, volatile void * __xlx_apatb_param_A_43, volatile void * __xlx_apatb_param_A_44, volatile void * __xlx_apatb_param_A_45, volatile void * __xlx_apatb_param_A_46, volatile void * __xlx_apatb_param_A_47, volatile void * __xlx_apatb_param_A_48, volatile void * __xlx_apatb_param_A_49, volatile void * __xlx_apatb_param_A_50, volatile void * __xlx_apatb_param_A_51, volatile void * __xlx_apatb_param_A_52, volatile void * __xlx_apatb_param_A_53, volatile void * __xlx_apatb_param_A_54, volatile void * __xlx_apatb_param_A_55, volatile void * __xlx_apatb_param_A_56, volatile void * __xlx_apatb_param_A_57, volatile void * __xlx_apatb_param_A_58, volatile void * __xlx_apatb_param_A_59, volatile void * __xlx_apatb_param_A_60, volatile void * __xlx_apatb_param_A_61, volatile void * __xlx_apatb_param_A_62, volatile void * __xlx_apatb_param_A_63, float __xlx_apatb_param_alpha) {
using hls::sim::createStream;
  // Collect __xlx_A_0__tmp_vec
std::vector<Byte<4>> __xlx_A_0__tmp_vec;
for (size_t i = 0; i < 1; ++i){
__xlx_A_0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_0)[i]);
}
  int __xlx_size_param_A_0 = 1;
  int __xlx_offset_param_A_0 = 0;
  int __xlx_offset_byte_param_A_0 = 0*4;
  // DUT call
  int ap_return = vs(__xlx_A_0__tmp_vec.data(), __xlx_offset_byte_param_A_0, __xlx_apatb_param_A_1, __xlx_apatb_param_A_2, __xlx_apatb_param_A_3, __xlx_apatb_param_A_4, __xlx_apatb_param_A_5, __xlx_apatb_param_A_6, __xlx_apatb_param_A_7, __xlx_apatb_param_A_8, __xlx_apatb_param_A_9, __xlx_apatb_param_A_10, __xlx_apatb_param_A_11, __xlx_apatb_param_A_12, __xlx_apatb_param_A_13, __xlx_apatb_param_A_14, __xlx_apatb_param_A_15, __xlx_apatb_param_A_16, __xlx_apatb_param_A_17, __xlx_apatb_param_A_18, __xlx_apatb_param_A_19, __xlx_apatb_param_A_20, __xlx_apatb_param_A_21, __xlx_apatb_param_A_22, __xlx_apatb_param_A_23, __xlx_apatb_param_A_24, __xlx_apatb_param_A_25, __xlx_apatb_param_A_26, __xlx_apatb_param_A_27, __xlx_apatb_param_A_28, __xlx_apatb_param_A_29, __xlx_apatb_param_A_30, __xlx_apatb_param_A_31, __xlx_apatb_param_A_32, __xlx_apatb_param_A_33, __xlx_apatb_param_A_34, __xlx_apatb_param_A_35, __xlx_apatb_param_A_36, __xlx_apatb_param_A_37, __xlx_apatb_param_A_38, __xlx_apatb_param_A_39, __xlx_apatb_param_A_40, __xlx_apatb_param_A_41, __xlx_apatb_param_A_42, __xlx_apatb_param_A_43, __xlx_apatb_param_A_44, __xlx_apatb_param_A_45, __xlx_apatb_param_A_46, __xlx_apatb_param_A_47, __xlx_apatb_param_A_48, __xlx_apatb_param_A_49, __xlx_apatb_param_A_50, __xlx_apatb_param_A_51, __xlx_apatb_param_A_52, __xlx_apatb_param_A_53, __xlx_apatb_param_A_54, __xlx_apatb_param_A_55, __xlx_apatb_param_A_56, __xlx_apatb_param_A_57, __xlx_apatb_param_A_58, __xlx_apatb_param_A_59, __xlx_apatb_param_A_60, __xlx_apatb_param_A_61, __xlx_apatb_param_A_62, __xlx_apatb_param_A_63, __xlx_apatb_param_alpha);
// print __xlx_apatb_param_A_0
for (size_t i = 0; i < __xlx_size_param_A_0; ++i) {
((Byte<4>*)__xlx_apatb_param_A_0)[i] = __xlx_A_0__tmp_vec[__xlx_offset_param_A_0+i];
}
return ap_return;
}
