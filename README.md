<h1 align="center">
 BSQ Tests
</h1>

####  〖 Test case maps used in evaluation sheet (during peer review) for the BSQ project. 〗

Usage:
```
./bsq bsq_test/tests/0
./bsq bsq_test/tests/10 | grep x | wc -l
```

----
#### 〖 Perl map generator 〗

Format:  
```
perl map_gen.pl <x> <y> <density> <empty character> <obstacle character> <output file name>
```

Usage:
```perl
perl map_gen.pl 10 10 0.4 . o 10x10.txt
```
