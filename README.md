# CS61C_proj3debug_helper
Debug helper script for CS61C Proj3 su19
Please run `cpu-onestage-sanity.sh` or `cpu-twostage-sanity.sh` or `cpu-twostage-user.sh` first, and pick up the FAILED test which you want to use this script to visulize the result.

e.g.:
```
$ ./cpu-twostage-user.sh
Testing your tests (two-stage processor)...
        you FAILED test: CPU addi test
        you PASSED test: CPU alu60 test
        you PASSED test: CPU alu1 test
        Score for you: 2/3 (2/3 tests passed, 0 partially)
```

and then you can do the following :
```
 $ ./proj3debug.sh user addi

Debug helper script for CS61C Proj3 su19
Created by Jianning Wang

Usage: ./proj3debug.sh [one|two|user] <test_name>
e.g.: ./proj3debug.sh one addi

CORRECT:
ra:  00000000 sp:  00000000 t0:  00000000 t1:  00000000 t2:  00000000 s0:  00000000 s1:  00000000 a0:  00000000 fetchAddr:  00000000 inst:  00500293 Time_Step:  0000
ra:  00000000 sp:  00000000 t0:  00000005 t1:  00000000 t2:  00000000 s0:  00000000 s1:  00000000 a0:  00000000 fetchAddr:  00000004 inst:  00728313 Time_Step:  0001
ra:  00000000 sp:  00000000 t0:  00000005 t1:  0000000c t2:  00000000 s0:  00000000 s1:  00000000 a0:  00000000 fetchAddr:  00000008 inst:  00928413 Time_Step:  0002
ra:  00000000 sp:  00000000 t0:  00000005 t1:  0000000c t2:  00000000 s0:  0000000e s1:  00000000 a0:  00000000 fetchAddr:  0000000c inst:  00000000 Time_Step:  0003
MINE:
ra:  00000000 sp:  00000000 t0:  00000000 t1:  00000000 t2:  00000000 s0:  00000000 s1:  00000000 a0:  00000000 fetchAddr:  00000000 inst:  00500293 Time_Step:  0000
ra:  00000000 sp:  00000000 t0:  00000000 t1:  00000000 t2:  00000000 s0:  00000000 s1:  00000000 a0:  00000000 fetchAddr:  00000004 inst:  00728313 Time_Step:  0001
ra:  00000000 sp:  00000000 t0:  00000005 t1:  00000000 t2:  00000000 s0:  00000000 s1:  00000000 a0:  00000000 fetchAddr:  00000008 inst:  00928413 Time_Step:  0002
ra:  00000000 sp:  00000000 t0:  00000005 t1:  0000000c t2:  00000000 s0:  00000000 s1:  00000000 a0:  00000000 fetchAddr:  0000000c inst:  00000000 Time_Step:  0003
Source:
addi.s
     1  addi t0, x0, 5
     2  addi t1, t0, 7
     3  addi s0, t0, 9
Hex:
addi.hex
     1  0x00500293
     2  0x00728313
     3  0x00928413
Diff: (CORRECT vs MINE)
2,4c2,4
< ra:  00000000 sp:  00000000 t0:  00000005 t1:  00000000 t2:  00000000 s0:  00000000 s1:  00000000 a0:  00000000 fetchAddr:  00000004 inst:  00728313 Time_Step:  0001
< ra:  00000000 sp:  00000000 t0:  00000005 t1:  0000000c t2:  00000000 s0:  00000000 s1:  00000000 a0:  00000000 fetchAddr:  00000008 inst:  00928413 Time_Step:  0002
< ra:  00000000 sp:  00000000 t0:  00000005 t1:  0000000c t2:  00000000 s0:  0000000e s1:  00000000 a0:  00000000 fetchAddr:  0000000c inst:  00000000 Time_Step:  0003
---
> ra:  00000000 sp:  00000000 t0:  00000000 t1:  00000000 t2:  00000000 s0:  00000000 s1:  00000000 a0:  00000000 fetchAddr:  00000004 inst:  00728313 Time_Step:  0001
> ra:  00000000 sp:  00000000 t0:  00000005 t1:  00000000 t2:  00000000 s0:  00000000 s1:  00000000 a0:  00000000 fetchAddr:  00000008 inst:  00928413 Time_Step:  0002
> ra:  00000000 sp:  00000000 t0:  00000005 t1:  0000000c t2:  00000000 s0:  00000000 s1:  00000000 a0:  00000000 fetchAddr:  0000000c inst:  00000000 Time_Step:  0003
```
