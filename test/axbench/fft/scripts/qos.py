#!/usr/bin/env python2

import sys
import math


class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

def printUsage():
  print "Usage: python qos.py <original file> <nn file>"
  exit(1)
pass;


if(len(sys.argv) != 3):
  printUsage()

origFilename  = sys.argv[1]
nnFilename    = sys.argv[2]

origLines     = open(origFilename).readlines()
nnLines     = open(nnFilename).readlines()


e = 0.0
absError = 0.0
trueAbsError = 0.0

for i in range(len(origLines)):
  ##import pdb
  ##pdb.set_trace()

  origLine  = origLines[i].rstrip()
  nnLine    = nnLines[i].rstrip()


  origReal  = float(origLine.split(" ")[0])
  origImag  = float(origLine.split(" ")[1])

  nnReal    = float(nnLine.split(" ")[0])
  nnImag    = float(nnLine.split(" ")[1])

  diffReal  = origReal - nnReal
  diffImag  = origImag - nnImag

  nominator   = math.sqrt(diffReal*diffReal + diffImag*diffImag)
  denominator = math.sqrt(origReal*origReal + origImag*origImag)

  if(denominator == 0):
    if (nominator == 0):
      e = 0.0
    else:
      e = 1.0
  elif(math.isnan(nominator) or (math.isnan(denominator))):
    e = 1.0
  elif ((nominator / denominator > 1)):
    e = 1.0
  else:
    e = nominator / denominator

  absError += e
  trueAbsError += nominator
pass;

print bcolors.WARNING + "*** Relative error: %1.8f %%" % (absError/float(len(origLines)) * 100.0) + bcolors.ENDC
print bcolors.WARNING + "*** Absolute error: %1.8f" % (trueAbsError/float(len(origLines))) + bcolors.ENDC
