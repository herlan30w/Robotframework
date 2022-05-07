#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr,n):
    minus = []
    plus = []
    nol = []
    A = []
    for i in arr:
        if i < 0 :
            minus.append(i)
        elif i > 0 :
            plus.append(i)
        elif i == 0 :
            nol.append(i)
    d = len(minus) / n
    A.append(d)
    b = len(plus) / n
    A.append(b)
    c = len(nol) / n
    A.append(c)
    A.sort()
    for i in reversed(A):
            print (i)
if __name__ == '__main__':
    n = int(input().strip())

    arr = list(map(int, input().rstrip().split()))

    plusMinus(arr,n)
