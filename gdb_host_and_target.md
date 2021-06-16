# On Target
$ gdbserver localhost:2001 <binaryName>


# On Host
$ gdb-multiarch -q 192.168.7.2:2001 <binaryName as above on Host>  
(gdb) target remote 192.168.7.2:2001  
(gdb) list  
(gdb) [b]reak <function name or filename:line# or *memory address>  
(gdb) break main  
(gdb) [r]un (arg1 arg2 ... argn)  
(gdb) [s]tep  
(gdb) condition 1 argc <= 2 || !strcmp(argv[1], "HelloWorld")  
(gdb) delete 4  
(gdb) [n]next  
(gdb) [c]ontinue  
(gdb) print <variable>  
(gdb) info local  
(gdb) [file] <filename of executable>  
(gdb) [k]ill
(gdb) [b]ack[t]race  
(gdb) info stack  
(gdb) where  
(gdb) [q]uit  
