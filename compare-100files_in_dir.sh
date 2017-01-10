 #!/bin/bash
 
 #using nested for loop
 for a in `ls -S`; do for b in `ls -S`; do diff -q $a $b; done; done
