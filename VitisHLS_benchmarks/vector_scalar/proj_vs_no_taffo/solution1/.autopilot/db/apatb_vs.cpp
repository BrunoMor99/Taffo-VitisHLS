#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_signal_handler.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_A_0 "../tv/cdatafile/c.vs.autotvin_A_0.dat"
#define AUTOTB_TVOUT_A_0 "../tv/cdatafile/c.vs.autotvout_A_0.dat"
#define AUTOTB_TVIN_A_1 "../tv/cdatafile/c.vs.autotvin_A_1.dat"
#define AUTOTB_TVOUT_A_1 "../tv/cdatafile/c.vs.autotvout_A_1.dat"
#define AUTOTB_TVIN_A_2 "../tv/cdatafile/c.vs.autotvin_A_2.dat"
#define AUTOTB_TVOUT_A_2 "../tv/cdatafile/c.vs.autotvout_A_2.dat"
#define AUTOTB_TVIN_A_3 "../tv/cdatafile/c.vs.autotvin_A_3.dat"
#define AUTOTB_TVOUT_A_3 "../tv/cdatafile/c.vs.autotvout_A_3.dat"
#define AUTOTB_TVIN_A_4 "../tv/cdatafile/c.vs.autotvin_A_4.dat"
#define AUTOTB_TVOUT_A_4 "../tv/cdatafile/c.vs.autotvout_A_4.dat"
#define AUTOTB_TVIN_A_5 "../tv/cdatafile/c.vs.autotvin_A_5.dat"
#define AUTOTB_TVOUT_A_5 "../tv/cdatafile/c.vs.autotvout_A_5.dat"
#define AUTOTB_TVIN_A_6 "../tv/cdatafile/c.vs.autotvin_A_6.dat"
#define AUTOTB_TVOUT_A_6 "../tv/cdatafile/c.vs.autotvout_A_6.dat"
#define AUTOTB_TVIN_A_7 "../tv/cdatafile/c.vs.autotvin_A_7.dat"
#define AUTOTB_TVOUT_A_7 "../tv/cdatafile/c.vs.autotvout_A_7.dat"
#define AUTOTB_TVIN_A_8 "../tv/cdatafile/c.vs.autotvin_A_8.dat"
#define AUTOTB_TVOUT_A_8 "../tv/cdatafile/c.vs.autotvout_A_8.dat"
#define AUTOTB_TVIN_A_9 "../tv/cdatafile/c.vs.autotvin_A_9.dat"
#define AUTOTB_TVOUT_A_9 "../tv/cdatafile/c.vs.autotvout_A_9.dat"
#define AUTOTB_TVIN_A_10 "../tv/cdatafile/c.vs.autotvin_A_10.dat"
#define AUTOTB_TVOUT_A_10 "../tv/cdatafile/c.vs.autotvout_A_10.dat"
#define AUTOTB_TVIN_A_11 "../tv/cdatafile/c.vs.autotvin_A_11.dat"
#define AUTOTB_TVOUT_A_11 "../tv/cdatafile/c.vs.autotvout_A_11.dat"
#define AUTOTB_TVIN_A_12 "../tv/cdatafile/c.vs.autotvin_A_12.dat"
#define AUTOTB_TVOUT_A_12 "../tv/cdatafile/c.vs.autotvout_A_12.dat"
#define AUTOTB_TVIN_A_13 "../tv/cdatafile/c.vs.autotvin_A_13.dat"
#define AUTOTB_TVOUT_A_13 "../tv/cdatafile/c.vs.autotvout_A_13.dat"
#define AUTOTB_TVIN_A_14 "../tv/cdatafile/c.vs.autotvin_A_14.dat"
#define AUTOTB_TVOUT_A_14 "../tv/cdatafile/c.vs.autotvout_A_14.dat"
#define AUTOTB_TVIN_A_15 "../tv/cdatafile/c.vs.autotvin_A_15.dat"
#define AUTOTB_TVOUT_A_15 "../tv/cdatafile/c.vs.autotvout_A_15.dat"
#define AUTOTB_TVIN_A_16 "../tv/cdatafile/c.vs.autotvin_A_16.dat"
#define AUTOTB_TVOUT_A_16 "../tv/cdatafile/c.vs.autotvout_A_16.dat"
#define AUTOTB_TVIN_A_17 "../tv/cdatafile/c.vs.autotvin_A_17.dat"
#define AUTOTB_TVOUT_A_17 "../tv/cdatafile/c.vs.autotvout_A_17.dat"
#define AUTOTB_TVIN_A_18 "../tv/cdatafile/c.vs.autotvin_A_18.dat"
#define AUTOTB_TVOUT_A_18 "../tv/cdatafile/c.vs.autotvout_A_18.dat"
#define AUTOTB_TVIN_A_19 "../tv/cdatafile/c.vs.autotvin_A_19.dat"
#define AUTOTB_TVOUT_A_19 "../tv/cdatafile/c.vs.autotvout_A_19.dat"
#define AUTOTB_TVIN_A_20 "../tv/cdatafile/c.vs.autotvin_A_20.dat"
#define AUTOTB_TVOUT_A_20 "../tv/cdatafile/c.vs.autotvout_A_20.dat"
#define AUTOTB_TVIN_A_21 "../tv/cdatafile/c.vs.autotvin_A_21.dat"
#define AUTOTB_TVOUT_A_21 "../tv/cdatafile/c.vs.autotvout_A_21.dat"
#define AUTOTB_TVIN_A_22 "../tv/cdatafile/c.vs.autotvin_A_22.dat"
#define AUTOTB_TVOUT_A_22 "../tv/cdatafile/c.vs.autotvout_A_22.dat"
#define AUTOTB_TVIN_A_23 "../tv/cdatafile/c.vs.autotvin_A_23.dat"
#define AUTOTB_TVOUT_A_23 "../tv/cdatafile/c.vs.autotvout_A_23.dat"
#define AUTOTB_TVIN_A_24 "../tv/cdatafile/c.vs.autotvin_A_24.dat"
#define AUTOTB_TVOUT_A_24 "../tv/cdatafile/c.vs.autotvout_A_24.dat"
#define AUTOTB_TVIN_A_25 "../tv/cdatafile/c.vs.autotvin_A_25.dat"
#define AUTOTB_TVOUT_A_25 "../tv/cdatafile/c.vs.autotvout_A_25.dat"
#define AUTOTB_TVIN_A_26 "../tv/cdatafile/c.vs.autotvin_A_26.dat"
#define AUTOTB_TVOUT_A_26 "../tv/cdatafile/c.vs.autotvout_A_26.dat"
#define AUTOTB_TVIN_A_27 "../tv/cdatafile/c.vs.autotvin_A_27.dat"
#define AUTOTB_TVOUT_A_27 "../tv/cdatafile/c.vs.autotvout_A_27.dat"
#define AUTOTB_TVIN_A_28 "../tv/cdatafile/c.vs.autotvin_A_28.dat"
#define AUTOTB_TVOUT_A_28 "../tv/cdatafile/c.vs.autotvout_A_28.dat"
#define AUTOTB_TVIN_A_29 "../tv/cdatafile/c.vs.autotvin_A_29.dat"
#define AUTOTB_TVOUT_A_29 "../tv/cdatafile/c.vs.autotvout_A_29.dat"
#define AUTOTB_TVIN_A_30 "../tv/cdatafile/c.vs.autotvin_A_30.dat"
#define AUTOTB_TVOUT_A_30 "../tv/cdatafile/c.vs.autotvout_A_30.dat"
#define AUTOTB_TVIN_A_31 "../tv/cdatafile/c.vs.autotvin_A_31.dat"
#define AUTOTB_TVOUT_A_31 "../tv/cdatafile/c.vs.autotvout_A_31.dat"
#define AUTOTB_TVIN_A_32 "../tv/cdatafile/c.vs.autotvin_A_32.dat"
#define AUTOTB_TVOUT_A_32 "../tv/cdatafile/c.vs.autotvout_A_32.dat"
#define AUTOTB_TVIN_A_33 "../tv/cdatafile/c.vs.autotvin_A_33.dat"
#define AUTOTB_TVOUT_A_33 "../tv/cdatafile/c.vs.autotvout_A_33.dat"
#define AUTOTB_TVIN_A_34 "../tv/cdatafile/c.vs.autotvin_A_34.dat"
#define AUTOTB_TVOUT_A_34 "../tv/cdatafile/c.vs.autotvout_A_34.dat"
#define AUTOTB_TVIN_A_35 "../tv/cdatafile/c.vs.autotvin_A_35.dat"
#define AUTOTB_TVOUT_A_35 "../tv/cdatafile/c.vs.autotvout_A_35.dat"
#define AUTOTB_TVIN_A_36 "../tv/cdatafile/c.vs.autotvin_A_36.dat"
#define AUTOTB_TVOUT_A_36 "../tv/cdatafile/c.vs.autotvout_A_36.dat"
#define AUTOTB_TVIN_A_37 "../tv/cdatafile/c.vs.autotvin_A_37.dat"
#define AUTOTB_TVOUT_A_37 "../tv/cdatafile/c.vs.autotvout_A_37.dat"
#define AUTOTB_TVIN_A_38 "../tv/cdatafile/c.vs.autotvin_A_38.dat"
#define AUTOTB_TVOUT_A_38 "../tv/cdatafile/c.vs.autotvout_A_38.dat"
#define AUTOTB_TVIN_A_39 "../tv/cdatafile/c.vs.autotvin_A_39.dat"
#define AUTOTB_TVOUT_A_39 "../tv/cdatafile/c.vs.autotvout_A_39.dat"
#define AUTOTB_TVIN_A_40 "../tv/cdatafile/c.vs.autotvin_A_40.dat"
#define AUTOTB_TVOUT_A_40 "../tv/cdatafile/c.vs.autotvout_A_40.dat"
#define AUTOTB_TVIN_A_41 "../tv/cdatafile/c.vs.autotvin_A_41.dat"
#define AUTOTB_TVOUT_A_41 "../tv/cdatafile/c.vs.autotvout_A_41.dat"
#define AUTOTB_TVIN_A_42 "../tv/cdatafile/c.vs.autotvin_A_42.dat"
#define AUTOTB_TVOUT_A_42 "../tv/cdatafile/c.vs.autotvout_A_42.dat"
#define AUTOTB_TVIN_A_43 "../tv/cdatafile/c.vs.autotvin_A_43.dat"
#define AUTOTB_TVOUT_A_43 "../tv/cdatafile/c.vs.autotvout_A_43.dat"
#define AUTOTB_TVIN_A_44 "../tv/cdatafile/c.vs.autotvin_A_44.dat"
#define AUTOTB_TVOUT_A_44 "../tv/cdatafile/c.vs.autotvout_A_44.dat"
#define AUTOTB_TVIN_A_45 "../tv/cdatafile/c.vs.autotvin_A_45.dat"
#define AUTOTB_TVOUT_A_45 "../tv/cdatafile/c.vs.autotvout_A_45.dat"
#define AUTOTB_TVIN_A_46 "../tv/cdatafile/c.vs.autotvin_A_46.dat"
#define AUTOTB_TVOUT_A_46 "../tv/cdatafile/c.vs.autotvout_A_46.dat"
#define AUTOTB_TVIN_A_47 "../tv/cdatafile/c.vs.autotvin_A_47.dat"
#define AUTOTB_TVOUT_A_47 "../tv/cdatafile/c.vs.autotvout_A_47.dat"
#define AUTOTB_TVIN_A_48 "../tv/cdatafile/c.vs.autotvin_A_48.dat"
#define AUTOTB_TVOUT_A_48 "../tv/cdatafile/c.vs.autotvout_A_48.dat"
#define AUTOTB_TVIN_A_49 "../tv/cdatafile/c.vs.autotvin_A_49.dat"
#define AUTOTB_TVOUT_A_49 "../tv/cdatafile/c.vs.autotvout_A_49.dat"
#define AUTOTB_TVIN_A_50 "../tv/cdatafile/c.vs.autotvin_A_50.dat"
#define AUTOTB_TVOUT_A_50 "../tv/cdatafile/c.vs.autotvout_A_50.dat"
#define AUTOTB_TVIN_A_51 "../tv/cdatafile/c.vs.autotvin_A_51.dat"
#define AUTOTB_TVOUT_A_51 "../tv/cdatafile/c.vs.autotvout_A_51.dat"
#define AUTOTB_TVIN_A_52 "../tv/cdatafile/c.vs.autotvin_A_52.dat"
#define AUTOTB_TVOUT_A_52 "../tv/cdatafile/c.vs.autotvout_A_52.dat"
#define AUTOTB_TVIN_A_53 "../tv/cdatafile/c.vs.autotvin_A_53.dat"
#define AUTOTB_TVOUT_A_53 "../tv/cdatafile/c.vs.autotvout_A_53.dat"
#define AUTOTB_TVIN_A_54 "../tv/cdatafile/c.vs.autotvin_A_54.dat"
#define AUTOTB_TVOUT_A_54 "../tv/cdatafile/c.vs.autotvout_A_54.dat"
#define AUTOTB_TVIN_A_55 "../tv/cdatafile/c.vs.autotvin_A_55.dat"
#define AUTOTB_TVOUT_A_55 "../tv/cdatafile/c.vs.autotvout_A_55.dat"
#define AUTOTB_TVIN_A_56 "../tv/cdatafile/c.vs.autotvin_A_56.dat"
#define AUTOTB_TVOUT_A_56 "../tv/cdatafile/c.vs.autotvout_A_56.dat"
#define AUTOTB_TVIN_A_57 "../tv/cdatafile/c.vs.autotvin_A_57.dat"
#define AUTOTB_TVOUT_A_57 "../tv/cdatafile/c.vs.autotvout_A_57.dat"
#define AUTOTB_TVIN_A_58 "../tv/cdatafile/c.vs.autotvin_A_58.dat"
#define AUTOTB_TVOUT_A_58 "../tv/cdatafile/c.vs.autotvout_A_58.dat"
#define AUTOTB_TVIN_A_59 "../tv/cdatafile/c.vs.autotvin_A_59.dat"
#define AUTOTB_TVOUT_A_59 "../tv/cdatafile/c.vs.autotvout_A_59.dat"
#define AUTOTB_TVIN_A_60 "../tv/cdatafile/c.vs.autotvin_A_60.dat"
#define AUTOTB_TVOUT_A_60 "../tv/cdatafile/c.vs.autotvout_A_60.dat"
#define AUTOTB_TVIN_A_61 "../tv/cdatafile/c.vs.autotvin_A_61.dat"
#define AUTOTB_TVOUT_A_61 "../tv/cdatafile/c.vs.autotvout_A_61.dat"
#define AUTOTB_TVIN_A_62 "../tv/cdatafile/c.vs.autotvin_A_62.dat"
#define AUTOTB_TVOUT_A_62 "../tv/cdatafile/c.vs.autotvout_A_62.dat"
#define AUTOTB_TVIN_A_63 "../tv/cdatafile/c.vs.autotvin_A_63.dat"
#define AUTOTB_TVOUT_A_63 "../tv/cdatafile/c.vs.autotvout_A_63.dat"
#define AUTOTB_TVIN_alpha "../tv/cdatafile/c.vs.autotvin_alpha.dat"
#define AUTOTB_TVOUT_alpha "../tv/cdatafile/c.vs.autotvout_alpha.dat"
#define AUTOTB_TVIN_gmem_0 "../tv/cdatafile/c.vs.autotvin_gmem_0.dat"
#define AUTOTB_TVOUT_gmem_0 "../tv/cdatafile/c.vs.autotvout_gmem_0.dat"
#define AUTOTB_TVOUT_return "../tv/cdatafile/c.vs.autotvout_ap_return.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_A_1 "../tv/rtldatafile/rtl.vs.autotvout_A_1.dat"
#define AUTOTB_TVOUT_PC_A_2 "../tv/rtldatafile/rtl.vs.autotvout_A_2.dat"
#define AUTOTB_TVOUT_PC_A_3 "../tv/rtldatafile/rtl.vs.autotvout_A_3.dat"
#define AUTOTB_TVOUT_PC_A_4 "../tv/rtldatafile/rtl.vs.autotvout_A_4.dat"
#define AUTOTB_TVOUT_PC_A_5 "../tv/rtldatafile/rtl.vs.autotvout_A_5.dat"
#define AUTOTB_TVOUT_PC_A_6 "../tv/rtldatafile/rtl.vs.autotvout_A_6.dat"
#define AUTOTB_TVOUT_PC_A_7 "../tv/rtldatafile/rtl.vs.autotvout_A_7.dat"
#define AUTOTB_TVOUT_PC_A_8 "../tv/rtldatafile/rtl.vs.autotvout_A_8.dat"
#define AUTOTB_TVOUT_PC_A_9 "../tv/rtldatafile/rtl.vs.autotvout_A_9.dat"
#define AUTOTB_TVOUT_PC_A_10 "../tv/rtldatafile/rtl.vs.autotvout_A_10.dat"
#define AUTOTB_TVOUT_PC_A_11 "../tv/rtldatafile/rtl.vs.autotvout_A_11.dat"
#define AUTOTB_TVOUT_PC_A_12 "../tv/rtldatafile/rtl.vs.autotvout_A_12.dat"
#define AUTOTB_TVOUT_PC_A_13 "../tv/rtldatafile/rtl.vs.autotvout_A_13.dat"
#define AUTOTB_TVOUT_PC_A_14 "../tv/rtldatafile/rtl.vs.autotvout_A_14.dat"
#define AUTOTB_TVOUT_PC_A_15 "../tv/rtldatafile/rtl.vs.autotvout_A_15.dat"
#define AUTOTB_TVOUT_PC_A_16 "../tv/rtldatafile/rtl.vs.autotvout_A_16.dat"
#define AUTOTB_TVOUT_PC_A_17 "../tv/rtldatafile/rtl.vs.autotvout_A_17.dat"
#define AUTOTB_TVOUT_PC_A_18 "../tv/rtldatafile/rtl.vs.autotvout_A_18.dat"
#define AUTOTB_TVOUT_PC_A_19 "../tv/rtldatafile/rtl.vs.autotvout_A_19.dat"
#define AUTOTB_TVOUT_PC_A_20 "../tv/rtldatafile/rtl.vs.autotvout_A_20.dat"
#define AUTOTB_TVOUT_PC_A_21 "../tv/rtldatafile/rtl.vs.autotvout_A_21.dat"
#define AUTOTB_TVOUT_PC_A_22 "../tv/rtldatafile/rtl.vs.autotvout_A_22.dat"
#define AUTOTB_TVOUT_PC_A_23 "../tv/rtldatafile/rtl.vs.autotvout_A_23.dat"
#define AUTOTB_TVOUT_PC_A_24 "../tv/rtldatafile/rtl.vs.autotvout_A_24.dat"
#define AUTOTB_TVOUT_PC_A_25 "../tv/rtldatafile/rtl.vs.autotvout_A_25.dat"
#define AUTOTB_TVOUT_PC_A_26 "../tv/rtldatafile/rtl.vs.autotvout_A_26.dat"
#define AUTOTB_TVOUT_PC_A_27 "../tv/rtldatafile/rtl.vs.autotvout_A_27.dat"
#define AUTOTB_TVOUT_PC_A_28 "../tv/rtldatafile/rtl.vs.autotvout_A_28.dat"
#define AUTOTB_TVOUT_PC_A_29 "../tv/rtldatafile/rtl.vs.autotvout_A_29.dat"
#define AUTOTB_TVOUT_PC_A_30 "../tv/rtldatafile/rtl.vs.autotvout_A_30.dat"
#define AUTOTB_TVOUT_PC_A_31 "../tv/rtldatafile/rtl.vs.autotvout_A_31.dat"
#define AUTOTB_TVOUT_PC_A_32 "../tv/rtldatafile/rtl.vs.autotvout_A_32.dat"
#define AUTOTB_TVOUT_PC_A_33 "../tv/rtldatafile/rtl.vs.autotvout_A_33.dat"
#define AUTOTB_TVOUT_PC_A_34 "../tv/rtldatafile/rtl.vs.autotvout_A_34.dat"
#define AUTOTB_TVOUT_PC_A_35 "../tv/rtldatafile/rtl.vs.autotvout_A_35.dat"
#define AUTOTB_TVOUT_PC_A_36 "../tv/rtldatafile/rtl.vs.autotvout_A_36.dat"
#define AUTOTB_TVOUT_PC_A_37 "../tv/rtldatafile/rtl.vs.autotvout_A_37.dat"
#define AUTOTB_TVOUT_PC_A_38 "../tv/rtldatafile/rtl.vs.autotvout_A_38.dat"
#define AUTOTB_TVOUT_PC_A_39 "../tv/rtldatafile/rtl.vs.autotvout_A_39.dat"
#define AUTOTB_TVOUT_PC_A_40 "../tv/rtldatafile/rtl.vs.autotvout_A_40.dat"
#define AUTOTB_TVOUT_PC_A_41 "../tv/rtldatafile/rtl.vs.autotvout_A_41.dat"
#define AUTOTB_TVOUT_PC_A_42 "../tv/rtldatafile/rtl.vs.autotvout_A_42.dat"
#define AUTOTB_TVOUT_PC_A_43 "../tv/rtldatafile/rtl.vs.autotvout_A_43.dat"
#define AUTOTB_TVOUT_PC_A_44 "../tv/rtldatafile/rtl.vs.autotvout_A_44.dat"
#define AUTOTB_TVOUT_PC_A_45 "../tv/rtldatafile/rtl.vs.autotvout_A_45.dat"
#define AUTOTB_TVOUT_PC_A_46 "../tv/rtldatafile/rtl.vs.autotvout_A_46.dat"
#define AUTOTB_TVOUT_PC_A_47 "../tv/rtldatafile/rtl.vs.autotvout_A_47.dat"
#define AUTOTB_TVOUT_PC_A_48 "../tv/rtldatafile/rtl.vs.autotvout_A_48.dat"
#define AUTOTB_TVOUT_PC_A_49 "../tv/rtldatafile/rtl.vs.autotvout_A_49.dat"
#define AUTOTB_TVOUT_PC_A_50 "../tv/rtldatafile/rtl.vs.autotvout_A_50.dat"
#define AUTOTB_TVOUT_PC_A_51 "../tv/rtldatafile/rtl.vs.autotvout_A_51.dat"
#define AUTOTB_TVOUT_PC_A_52 "../tv/rtldatafile/rtl.vs.autotvout_A_52.dat"
#define AUTOTB_TVOUT_PC_A_53 "../tv/rtldatafile/rtl.vs.autotvout_A_53.dat"
#define AUTOTB_TVOUT_PC_A_54 "../tv/rtldatafile/rtl.vs.autotvout_A_54.dat"
#define AUTOTB_TVOUT_PC_A_55 "../tv/rtldatafile/rtl.vs.autotvout_A_55.dat"
#define AUTOTB_TVOUT_PC_A_56 "../tv/rtldatafile/rtl.vs.autotvout_A_56.dat"
#define AUTOTB_TVOUT_PC_A_57 "../tv/rtldatafile/rtl.vs.autotvout_A_57.dat"
#define AUTOTB_TVOUT_PC_A_58 "../tv/rtldatafile/rtl.vs.autotvout_A_58.dat"
#define AUTOTB_TVOUT_PC_A_59 "../tv/rtldatafile/rtl.vs.autotvout_A_59.dat"
#define AUTOTB_TVOUT_PC_A_60 "../tv/rtldatafile/rtl.vs.autotvout_A_60.dat"
#define AUTOTB_TVOUT_PC_A_61 "../tv/rtldatafile/rtl.vs.autotvout_A_61.dat"
#define AUTOTB_TVOUT_PC_A_62 "../tv/rtldatafile/rtl.vs.autotvout_A_62.dat"
#define AUTOTB_TVOUT_PC_A_63 "../tv/rtldatafile/rtl.vs.autotvout_A_63.dat"
#define AUTOTB_TVOUT_PC_gmem_0 "../tv/rtldatafile/rtl.vs.autotvout_gmem_0.dat"
#define AUTOTB_TVOUT_PC_return "../tv/rtldatafile/rtl.vs.autotvout_ap_return.dat"


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
  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put)
  {
    size_t wbytes = (strlen(data)-2+1)>>1;
    put = LE ? put : put+wbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + strlen(data) - 1;
    auto next = [&] () {
      char res = ord(*c);
      --c;
      return res;
    };
    size_t fbytes = (strlen(data)-2)>>1;
    for (size_t i = 0; i < fbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
    if (wbytes > fbytes) {
      *nextp() = next();
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t psize, size_t depth)
    {
      for (size_t i = 0; i < depth; ++i) {
        read(param, wbytes);
        param += psize;
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t psize, size_t depth, size_t skip)
    {
      param -= psize*skip;
      for (size_t i = 0; i < depth; ++i) {
        write(param, wbytes);
        param += psize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> depth;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = depth[0];
      } else {
        tcl.set(name[0], sum(depth));
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct FIFO {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t depth;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~FIFO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = port.offset[i];
        size_t depth = port.depth[i] - skip;
        port.reader->advance(wbytes*skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                          port.asize, depth);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                            port.asize, port.depth[i]);
        } else {
          port.reader->advance(wbytes*port.depth[i]);
        }
      }
    }
  }
#endif
  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        for (size_t j = 0; j < port.depth[i]-port.offset[i]; ++j) {
          if (char *s = port.reader->next()) {
            foundX |= RTLOutputCheckAndReplacement(s);
            unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
          }
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          for (size_t j = 0; j < port.depth[i]; ++j) {
            if (char *s = port.reader->next()) {
              foundX |= RTLOutputCheckAndReplacement(s);
              unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
            }
          }
        } else {
          port.reader->skip(port.depth[i]);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(FIFO &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      for (size_t j = 0; j < port.depth; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, (unsigned char*)port.param+j*port.asize);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(sum(port.depth));
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.depth[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      for (size_t j = 0; j < port.depth[i]; ++j) {
        std::string &&s {
          formatData((unsigned char*)port.param[i]+j*port.asize, port.width)
        };
        writer->next(s.data());
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(FIFO &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)port.param+j*port.asize, port.width)
      };
      writer->next(s.data());
    }
    writer->end();
  }


  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
hls::sim::Byte<4> vs_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, float);

extern "C"
hls::sim::Byte<4> apatb_vs_hw(void* __xlx_apatb_param_A_0, void* __xlx_apatb_param_A_1, void* __xlx_apatb_param_A_2, void* __xlx_apatb_param_A_3, void* __xlx_apatb_param_A_4, void* __xlx_apatb_param_A_5, void* __xlx_apatb_param_A_6, void* __xlx_apatb_param_A_7, void* __xlx_apatb_param_A_8, void* __xlx_apatb_param_A_9, void* __xlx_apatb_param_A_10, void* __xlx_apatb_param_A_11, void* __xlx_apatb_param_A_12, void* __xlx_apatb_param_A_13, void* __xlx_apatb_param_A_14, void* __xlx_apatb_param_A_15, void* __xlx_apatb_param_A_16, void* __xlx_apatb_param_A_17, void* __xlx_apatb_param_A_18, void* __xlx_apatb_param_A_19, void* __xlx_apatb_param_A_20, void* __xlx_apatb_param_A_21, void* __xlx_apatb_param_A_22, void* __xlx_apatb_param_A_23, void* __xlx_apatb_param_A_24, void* __xlx_apatb_param_A_25, void* __xlx_apatb_param_A_26, void* __xlx_apatb_param_A_27, void* __xlx_apatb_param_A_28, void* __xlx_apatb_param_A_29, void* __xlx_apatb_param_A_30, void* __xlx_apatb_param_A_31, void* __xlx_apatb_param_A_32, void* __xlx_apatb_param_A_33, void* __xlx_apatb_param_A_34, void* __xlx_apatb_param_A_35, void* __xlx_apatb_param_A_36, void* __xlx_apatb_param_A_37, void* __xlx_apatb_param_A_38, void* __xlx_apatb_param_A_39, void* __xlx_apatb_param_A_40, void* __xlx_apatb_param_A_41, void* __xlx_apatb_param_A_42, void* __xlx_apatb_param_A_43, void* __xlx_apatb_param_A_44, void* __xlx_apatb_param_A_45, void* __xlx_apatb_param_A_46, void* __xlx_apatb_param_A_47, void* __xlx_apatb_param_A_48, void* __xlx_apatb_param_A_49, void* __xlx_apatb_param_A_50, void* __xlx_apatb_param_A_51, void* __xlx_apatb_param_A_52, void* __xlx_apatb_param_A_53, void* __xlx_apatb_param_A_54, void* __xlx_apatb_param_A_55, void* __xlx_apatb_param_A_56, void* __xlx_apatb_param_A_57, void* __xlx_apatb_param_A_58, void* __xlx_apatb_param_A_59, void* __xlx_apatb_param_A_60, void* __xlx_apatb_param_A_61, void* __xlx_apatb_param_A_62, void* __xlx_apatb_param_A_63, float __xlx_apatb_param_alpha)
{
  hls::sim::Byte<4> ap_return;
  static hls::sim::Register port0 {
    .name = "return",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_return),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_return),
    .iwriter = nullptr,
#endif
  };
  port0.param = &ap_return;

  hls::sim::Byte<4> __xlx_offset_byte_param_A_0;
  static hls::sim::Register port1 {
    .name = "A_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_0),
#endif
  };
  port1.param = &__xlx_offset_byte_param_A_0;

  static hls::sim::Register port2 {
    .name = "A_1",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_1),
#endif
  };
  port2.param = __xlx_apatb_param_A_1;

  static hls::sim::Register port3 {
    .name = "A_2",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_2),
#endif
  };
  port3.param = __xlx_apatb_param_A_2;

  static hls::sim::Register port4 {
    .name = "A_3",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_3),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_3),
#endif
  };
  port4.param = __xlx_apatb_param_A_3;

  static hls::sim::Register port5 {
    .name = "A_4",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_4),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_4),
#endif
  };
  port5.param = __xlx_apatb_param_A_4;

  static hls::sim::Register port6 {
    .name = "A_5",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_5),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_5),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_5),
#endif
  };
  port6.param = __xlx_apatb_param_A_5;

  static hls::sim::Register port7 {
    .name = "A_6",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_6),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_6),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_6),
#endif
  };
  port7.param = __xlx_apatb_param_A_6;

  static hls::sim::Register port8 {
    .name = "A_7",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_7),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_7),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_7),
#endif
  };
  port8.param = __xlx_apatb_param_A_7;

  static hls::sim::Register port9 {
    .name = "A_8",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_8),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_8),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_8),
#endif
  };
  port9.param = __xlx_apatb_param_A_8;

  static hls::sim::Register port10 {
    .name = "A_9",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_9),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_9),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_9),
#endif
  };
  port10.param = __xlx_apatb_param_A_9;

  static hls::sim::Register port11 {
    .name = "A_10",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_10),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_10),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_10),
#endif
  };
  port11.param = __xlx_apatb_param_A_10;

  static hls::sim::Register port12 {
    .name = "A_11",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_11),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_11),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_11),
#endif
  };
  port12.param = __xlx_apatb_param_A_11;

  static hls::sim::Register port13 {
    .name = "A_12",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_12),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_12),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_12),
#endif
  };
  port13.param = __xlx_apatb_param_A_12;

  static hls::sim::Register port14 {
    .name = "A_13",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_13),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_13),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_13),
#endif
  };
  port14.param = __xlx_apatb_param_A_13;

  static hls::sim::Register port15 {
    .name = "A_14",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_14),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_14),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_14),
#endif
  };
  port15.param = __xlx_apatb_param_A_14;

  static hls::sim::Register port16 {
    .name = "A_15",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_15),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_15),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_15),
#endif
  };
  port16.param = __xlx_apatb_param_A_15;

  static hls::sim::Register port17 {
    .name = "A_16",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_16),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_16),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_16),
#endif
  };
  port17.param = __xlx_apatb_param_A_16;

  static hls::sim::Register port18 {
    .name = "A_17",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_17),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_17),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_17),
#endif
  };
  port18.param = __xlx_apatb_param_A_17;

  static hls::sim::Register port19 {
    .name = "A_18",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_18),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_18),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_18),
#endif
  };
  port19.param = __xlx_apatb_param_A_18;

  static hls::sim::Register port20 {
    .name = "A_19",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_19),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_19),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_19),
#endif
  };
  port20.param = __xlx_apatb_param_A_19;

  static hls::sim::Register port21 {
    .name = "A_20",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_20),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_20),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_20),
#endif
  };
  port21.param = __xlx_apatb_param_A_20;

  static hls::sim::Register port22 {
    .name = "A_21",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_21),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_21),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_21),
#endif
  };
  port22.param = __xlx_apatb_param_A_21;

  static hls::sim::Register port23 {
    .name = "A_22",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_22),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_22),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_22),
#endif
  };
  port23.param = __xlx_apatb_param_A_22;

  static hls::sim::Register port24 {
    .name = "A_23",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_23),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_23),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_23),
#endif
  };
  port24.param = __xlx_apatb_param_A_23;

  static hls::sim::Register port25 {
    .name = "A_24",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_24),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_24),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_24),
#endif
  };
  port25.param = __xlx_apatb_param_A_24;

  static hls::sim::Register port26 {
    .name = "A_25",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_25),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_25),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_25),
#endif
  };
  port26.param = __xlx_apatb_param_A_25;

  static hls::sim::Register port27 {
    .name = "A_26",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_26),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_26),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_26),
#endif
  };
  port27.param = __xlx_apatb_param_A_26;

  static hls::sim::Register port28 {
    .name = "A_27",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_27),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_27),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_27),
#endif
  };
  port28.param = __xlx_apatb_param_A_27;

  static hls::sim::Register port29 {
    .name = "A_28",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_28),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_28),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_28),
#endif
  };
  port29.param = __xlx_apatb_param_A_28;

  static hls::sim::Register port30 {
    .name = "A_29",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_29),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_29),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_29),
#endif
  };
  port30.param = __xlx_apatb_param_A_29;

  static hls::sim::Register port31 {
    .name = "A_30",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_30),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_30),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_30),
#endif
  };
  port31.param = __xlx_apatb_param_A_30;

  static hls::sim::Register port32 {
    .name = "A_31",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_31),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_31),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_31),
#endif
  };
  port32.param = __xlx_apatb_param_A_31;

  static hls::sim::Register port33 {
    .name = "A_32",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_32),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_32),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_32),
#endif
  };
  port33.param = __xlx_apatb_param_A_32;

  static hls::sim::Register port34 {
    .name = "A_33",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_33),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_33),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_33),
#endif
  };
  port34.param = __xlx_apatb_param_A_33;

  static hls::sim::Register port35 {
    .name = "A_34",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_34),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_34),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_34),
#endif
  };
  port35.param = __xlx_apatb_param_A_34;

  static hls::sim::Register port36 {
    .name = "A_35",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_35),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_35),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_35),
#endif
  };
  port36.param = __xlx_apatb_param_A_35;

  static hls::sim::Register port37 {
    .name = "A_36",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_36),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_36),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_36),
#endif
  };
  port37.param = __xlx_apatb_param_A_36;

  static hls::sim::Register port38 {
    .name = "A_37",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_37),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_37),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_37),
#endif
  };
  port38.param = __xlx_apatb_param_A_37;

  static hls::sim::Register port39 {
    .name = "A_38",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_38),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_38),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_38),
#endif
  };
  port39.param = __xlx_apatb_param_A_38;

  static hls::sim::Register port40 {
    .name = "A_39",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_39),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_39),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_39),
#endif
  };
  port40.param = __xlx_apatb_param_A_39;

  static hls::sim::Register port41 {
    .name = "A_40",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_40),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_40),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_40),
#endif
  };
  port41.param = __xlx_apatb_param_A_40;

  static hls::sim::Register port42 {
    .name = "A_41",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_41),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_41),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_41),
#endif
  };
  port42.param = __xlx_apatb_param_A_41;

  static hls::sim::Register port43 {
    .name = "A_42",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_42),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_42),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_42),
#endif
  };
  port43.param = __xlx_apatb_param_A_42;

  static hls::sim::Register port44 {
    .name = "A_43",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_43),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_43),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_43),
#endif
  };
  port44.param = __xlx_apatb_param_A_43;

  static hls::sim::Register port45 {
    .name = "A_44",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_44),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_44),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_44),
#endif
  };
  port45.param = __xlx_apatb_param_A_44;

  static hls::sim::Register port46 {
    .name = "A_45",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_45),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_45),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_45),
#endif
  };
  port46.param = __xlx_apatb_param_A_45;

  static hls::sim::Register port47 {
    .name = "A_46",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_46),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_46),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_46),
#endif
  };
  port47.param = __xlx_apatb_param_A_46;

  static hls::sim::Register port48 {
    .name = "A_47",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_47),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_47),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_47),
#endif
  };
  port48.param = __xlx_apatb_param_A_47;

  static hls::sim::Register port49 {
    .name = "A_48",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_48),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_48),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_48),
#endif
  };
  port49.param = __xlx_apatb_param_A_48;

  static hls::sim::Register port50 {
    .name = "A_49",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_49),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_49),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_49),
#endif
  };
  port50.param = __xlx_apatb_param_A_49;

  static hls::sim::Register port51 {
    .name = "A_50",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_50),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_50),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_50),
#endif
  };
  port51.param = __xlx_apatb_param_A_50;

  static hls::sim::Register port52 {
    .name = "A_51",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_51),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_51),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_51),
#endif
  };
  port52.param = __xlx_apatb_param_A_51;

  static hls::sim::Register port53 {
    .name = "A_52",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_52),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_52),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_52),
#endif
  };
  port53.param = __xlx_apatb_param_A_52;

  static hls::sim::Register port54 {
    .name = "A_53",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_53),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_53),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_53),
#endif
  };
  port54.param = __xlx_apatb_param_A_53;

  static hls::sim::Register port55 {
    .name = "A_54",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_54),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_54),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_54),
#endif
  };
  port55.param = __xlx_apatb_param_A_54;

  static hls::sim::Register port56 {
    .name = "A_55",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_55),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_55),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_55),
#endif
  };
  port56.param = __xlx_apatb_param_A_55;

  static hls::sim::Register port57 {
    .name = "A_56",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_56),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_56),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_56),
#endif
  };
  port57.param = __xlx_apatb_param_A_56;

  static hls::sim::Register port58 {
    .name = "A_57",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_57),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_57),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_57),
#endif
  };
  port58.param = __xlx_apatb_param_A_57;

  static hls::sim::Register port59 {
    .name = "A_58",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_58),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_58),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_58),
#endif
  };
  port59.param = __xlx_apatb_param_A_58;

  static hls::sim::Register port60 {
    .name = "A_59",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_59),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_59),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_59),
#endif
  };
  port60.param = __xlx_apatb_param_A_59;

  static hls::sim::Register port61 {
    .name = "A_60",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_60),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_60),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_60),
#endif
  };
  port61.param = __xlx_apatb_param_A_60;

  static hls::sim::Register port62 {
    .name = "A_61",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_61),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_61),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_61),
#endif
  };
  port62.param = __xlx_apatb_param_A_61;

  static hls::sim::Register port63 {
    .name = "A_62",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_62),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_62),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_62),
#endif
  };
  port63.param = __xlx_apatb_param_A_62;

  static hls::sim::Register port64 {
    .name = "A_63",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_A_63),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_A_63),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_63),
#endif
  };
  port64.param = __xlx_apatb_param_A_63;

  static hls::sim::Register port65 {
    .name = "alpha",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_alpha),
#endif
  };
  port65.param = &__xlx_apatb_param_alpha;

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port66 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gmem_0" },
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_gmem_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_gmem_0),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_0),
#endif
  };
  port66.param = { __xlx_apatb_param_A_0 };
  port66.depth = { 1 };
  port66.offset = {  };
  port66.hasWrite = { true };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port0);
    check(port2);
    check(port3);
    check(port4);
    check(port5);
    check(port6);
    check(port7);
    check(port8);
    check(port9);
    check(port10);
    check(port11);
    check(port12);
    check(port13);
    check(port14);
    check(port15);
    check(port16);
    check(port17);
    check(port18);
    check(port19);
    check(port20);
    check(port21);
    check(port22);
    check(port23);
    check(port24);
    check(port25);
    check(port26);
    check(port27);
    check(port28);
    check(port29);
    check(port30);
    check(port31);
    check(port32);
    check(port33);
    check(port34);
    check(port35);
    check(port36);
    check(port37);
    check(port38);
    check(port39);
    check(port40);
    check(port41);
    check(port42);
    check(port43);
    check(port44);
    check(port45);
    check(port46);
    check(port47);
    check(port48);
    check(port49);
    check(port50);
    check(port51);
    check(port52);
    check(port53);
    check(port54);
    check(port55);
    check(port56);
    check(port57);
    check(port58);
    check(port59);
    check(port60);
    check(port61);
    check(port62);
    check(port63);
    check(port64);
    check(port66);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    dump(port43, port43.iwriter, tcl.AESL_transaction);
    dump(port44, port44.iwriter, tcl.AESL_transaction);
    dump(port45, port45.iwriter, tcl.AESL_transaction);
    dump(port46, port46.iwriter, tcl.AESL_transaction);
    dump(port47, port47.iwriter, tcl.AESL_transaction);
    dump(port48, port48.iwriter, tcl.AESL_transaction);
    dump(port49, port49.iwriter, tcl.AESL_transaction);
    dump(port50, port50.iwriter, tcl.AESL_transaction);
    dump(port51, port51.iwriter, tcl.AESL_transaction);
    dump(port52, port52.iwriter, tcl.AESL_transaction);
    dump(port53, port53.iwriter, tcl.AESL_transaction);
    dump(port54, port54.iwriter, tcl.AESL_transaction);
    dump(port55, port55.iwriter, tcl.AESL_transaction);
    dump(port56, port56.iwriter, tcl.AESL_transaction);
    dump(port57, port57.iwriter, tcl.AESL_transaction);
    dump(port58, port58.iwriter, tcl.AESL_transaction);
    dump(port59, port59.iwriter, tcl.AESL_transaction);
    dump(port60, port60.iwriter, tcl.AESL_transaction);
    dump(port61, port61.iwriter, tcl.AESL_transaction);
    dump(port62, port62.iwriter, tcl.AESL_transaction);
    dump(port63, port63.iwriter, tcl.AESL_transaction);
    dump(port64, port64.iwriter, tcl.AESL_transaction);
    dump(port65, port65.iwriter, tcl.AESL_transaction);
    dump(port66, port66.iwriter, tcl.AESL_transaction);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port49.doTCL(tcl);
    port50.doTCL(tcl);
    port51.doTCL(tcl);
    port52.doTCL(tcl);
    port53.doTCL(tcl);
    port54.doTCL(tcl);
    port55.doTCL(tcl);
    port56.doTCL(tcl);
    port57.doTCL(tcl);
    port58.doTCL(tcl);
    port59.doTCL(tcl);
    port60.doTCL(tcl);
    port61.doTCL(tcl);
    port62.doTCL(tcl);
    port63.doTCL(tcl);
    port64.doTCL(tcl);
    port65.doTCL(tcl);
    port66.doTCL(tcl);
    CodeState = CALL_C_DUT;
    ap_return = vs_hw_stub_wrapper(__xlx_apatb_param_A_0, __xlx_apatb_param_A_1, __xlx_apatb_param_A_2, __xlx_apatb_param_A_3, __xlx_apatb_param_A_4, __xlx_apatb_param_A_5, __xlx_apatb_param_A_6, __xlx_apatb_param_A_7, __xlx_apatb_param_A_8, __xlx_apatb_param_A_9, __xlx_apatb_param_A_10, __xlx_apatb_param_A_11, __xlx_apatb_param_A_12, __xlx_apatb_param_A_13, __xlx_apatb_param_A_14, __xlx_apatb_param_A_15, __xlx_apatb_param_A_16, __xlx_apatb_param_A_17, __xlx_apatb_param_A_18, __xlx_apatb_param_A_19, __xlx_apatb_param_A_20, __xlx_apatb_param_A_21, __xlx_apatb_param_A_22, __xlx_apatb_param_A_23, __xlx_apatb_param_A_24, __xlx_apatb_param_A_25, __xlx_apatb_param_A_26, __xlx_apatb_param_A_27, __xlx_apatb_param_A_28, __xlx_apatb_param_A_29, __xlx_apatb_param_A_30, __xlx_apatb_param_A_31, __xlx_apatb_param_A_32, __xlx_apatb_param_A_33, __xlx_apatb_param_A_34, __xlx_apatb_param_A_35, __xlx_apatb_param_A_36, __xlx_apatb_param_A_37, __xlx_apatb_param_A_38, __xlx_apatb_param_A_39, __xlx_apatb_param_A_40, __xlx_apatb_param_A_41, __xlx_apatb_param_A_42, __xlx_apatb_param_A_43, __xlx_apatb_param_A_44, __xlx_apatb_param_A_45, __xlx_apatb_param_A_46, __xlx_apatb_param_A_47, __xlx_apatb_param_A_48, __xlx_apatb_param_A_49, __xlx_apatb_param_A_50, __xlx_apatb_param_A_51, __xlx_apatb_param_A_52, __xlx_apatb_param_A_53, __xlx_apatb_param_A_54, __xlx_apatb_param_A_55, __xlx_apatb_param_A_56, __xlx_apatb_param_A_57, __xlx_apatb_param_A_58, __xlx_apatb_param_A_59, __xlx_apatb_param_A_60, __xlx_apatb_param_A_61, __xlx_apatb_param_A_62, __xlx_apatb_param_A_63, __xlx_apatb_param_alpha);
    CodeState = DUMP_OUTPUTS;
    dump(port0, port0.owriter, tcl.AESL_transaction);
    dump(port2, port2.owriter, tcl.AESL_transaction);
    dump(port3, port3.owriter, tcl.AESL_transaction);
    dump(port4, port4.owriter, tcl.AESL_transaction);
    dump(port5, port5.owriter, tcl.AESL_transaction);
    dump(port6, port6.owriter, tcl.AESL_transaction);
    dump(port7, port7.owriter, tcl.AESL_transaction);
    dump(port8, port8.owriter, tcl.AESL_transaction);
    dump(port9, port9.owriter, tcl.AESL_transaction);
    dump(port10, port10.owriter, tcl.AESL_transaction);
    dump(port11, port11.owriter, tcl.AESL_transaction);
    dump(port12, port12.owriter, tcl.AESL_transaction);
    dump(port13, port13.owriter, tcl.AESL_transaction);
    dump(port14, port14.owriter, tcl.AESL_transaction);
    dump(port15, port15.owriter, tcl.AESL_transaction);
    dump(port16, port16.owriter, tcl.AESL_transaction);
    dump(port17, port17.owriter, tcl.AESL_transaction);
    dump(port18, port18.owriter, tcl.AESL_transaction);
    dump(port19, port19.owriter, tcl.AESL_transaction);
    dump(port20, port20.owriter, tcl.AESL_transaction);
    dump(port21, port21.owriter, tcl.AESL_transaction);
    dump(port22, port22.owriter, tcl.AESL_transaction);
    dump(port23, port23.owriter, tcl.AESL_transaction);
    dump(port24, port24.owriter, tcl.AESL_transaction);
    dump(port25, port25.owriter, tcl.AESL_transaction);
    dump(port26, port26.owriter, tcl.AESL_transaction);
    dump(port27, port27.owriter, tcl.AESL_transaction);
    dump(port28, port28.owriter, tcl.AESL_transaction);
    dump(port29, port29.owriter, tcl.AESL_transaction);
    dump(port30, port30.owriter, tcl.AESL_transaction);
    dump(port31, port31.owriter, tcl.AESL_transaction);
    dump(port32, port32.owriter, tcl.AESL_transaction);
    dump(port33, port33.owriter, tcl.AESL_transaction);
    dump(port34, port34.owriter, tcl.AESL_transaction);
    dump(port35, port35.owriter, tcl.AESL_transaction);
    dump(port36, port36.owriter, tcl.AESL_transaction);
    dump(port37, port37.owriter, tcl.AESL_transaction);
    dump(port38, port38.owriter, tcl.AESL_transaction);
    dump(port39, port39.owriter, tcl.AESL_transaction);
    dump(port40, port40.owriter, tcl.AESL_transaction);
    dump(port41, port41.owriter, tcl.AESL_transaction);
    dump(port42, port42.owriter, tcl.AESL_transaction);
    dump(port43, port43.owriter, tcl.AESL_transaction);
    dump(port44, port44.owriter, tcl.AESL_transaction);
    dump(port45, port45.owriter, tcl.AESL_transaction);
    dump(port46, port46.owriter, tcl.AESL_transaction);
    dump(port47, port47.owriter, tcl.AESL_transaction);
    dump(port48, port48.owriter, tcl.AESL_transaction);
    dump(port49, port49.owriter, tcl.AESL_transaction);
    dump(port50, port50.owriter, tcl.AESL_transaction);
    dump(port51, port51.owriter, tcl.AESL_transaction);
    dump(port52, port52.owriter, tcl.AESL_transaction);
    dump(port53, port53.owriter, tcl.AESL_transaction);
    dump(port54, port54.owriter, tcl.AESL_transaction);
    dump(port55, port55.owriter, tcl.AESL_transaction);
    dump(port56, port56.owriter, tcl.AESL_transaction);
    dump(port57, port57.owriter, tcl.AESL_transaction);
    dump(port58, port58.owriter, tcl.AESL_transaction);
    dump(port59, port59.owriter, tcl.AESL_transaction);
    dump(port60, port60.owriter, tcl.AESL_transaction);
    dump(port61, port61.owriter, tcl.AESL_transaction);
    dump(port62, port62.owriter, tcl.AESL_transaction);
    dump(port63, port63.owriter, tcl.AESL_transaction);
    dump(port64, port64.owriter, tcl.AESL_transaction);
    dump(port66, port66.owriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
return ap_return;
}