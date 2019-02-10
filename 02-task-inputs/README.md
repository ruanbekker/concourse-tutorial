## 02 - Task Inputs:

Running a task that relies on no inputs:

```
$ fly -t ci e -c no_inputs.yml

executing build 37 at http://10.20.30.40/builds/37
initializing
running uname -a
Linux 2fd4e261-a708-4e15-4a4a-2bc50221a664 4.9.0-8-amd64 #1 SMP Debian 4.9.110-3+deb9u4 (2018-08-21) x86_64 GNU/Linux
succeeded
```

Running a task that depends on a input and specifiying the path to the input:

```
$ fly -t ci e -c inputs_required.yml -i my-input=./my-data-folder/

executing build 32 at http://10.20.30.40/builds/32
initializing
my-input: 262.13 KiB/s 0s
running ls -alR
.:
total 0
drwxr-xr-x    1 root     root            16 Feb 10 08:53 .
drwxr-xr-x    1 root     root            16 Feb 10 08:53 ..
drwxr-xr-x    1 root     root            36 Feb 10 08:53 my-input

./my-input:
total 0
drwxr-xr-x    1 root     root            36 Feb 10 08:53 .
drwxr-xr-x    1 root     root            16 Feb 10 08:53 ..
-rw-r--r--    1 501      staff            0 Feb 10 08:52 test1.txt
-rw-r--r--    1 501      staff            0 Feb 10 08:52 test2.txt
succeeded
```

Running a task that relies on the input path which will be our current working directory. Note: the input name should be the same as the current working directory:

```
$ cd my-parent-dir-input
$ fly -t ci e -c ../input_parent_dir.yml

executing build 35 at http://10.20.30.40/builds/35
initializing
my-parent-dir-input: 395.85 KiB/s 0s
running ls -alR
.:
total 0
drwxr-xr-x    1 root     root            38 Feb 10 09:17 .
drwxr-xr-x    1 root     root            16 Feb 10 09:17 ..
drwxr-xr-x    1 root     root            18 Feb 10 09:17 my-parent-dir-input

./my-parent-dir-input:
total 0
drwxr-xr-x    1 root     root            18 Feb 10 09:17 .
drwxr-xr-x    1 root     root            38 Feb 10 09:17 ..
-rw-r--r--    1 501      staff            0 Feb 10 09:15 test1.txt
succeeded 
```
