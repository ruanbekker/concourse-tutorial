## 04 - Pipeline Resources

Set your pipeline:

```
$ fly -t ci sp -c pipeline.yml -p 04-hello-world

apply configuration? [yN]: y
pipeline created!
```

Unpause the pipeline

```
$ fly -t ci up -p 04-hello-world
unpaused '04-hello-world'
```

Trigger the job (trigger is off; default)

```
$ fly -t ci tj -j 04-hello-world/job-hello-world --watch
started 04-hello-world/job-hello-world #4

initializing
running uname -a
Linux 6a91b808-c488-4e3c-7b51-404f73405c31 4.9.0-8-amd64 #1 SMP Debian 4.9.110-3+deb9u4 (2018-08-21) x86_64 GNU/Linux
succeeded
```
