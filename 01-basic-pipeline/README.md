## 01 - Basic Pipeline:

Set the pipeline:

```
$ fly -t ci sp -c pipeline.yml -p basic-pipeline
```

Unpause the pipeline:

```
$ fly -t ci up -p basic-pipeline
```

Trigger the job:

```
$ fly -t ci tj -j basic-pipeline/job-hello-world
started basic-pipeline/job-hello-world #1
```

Optionally: Trigger the job and follow the output:

```
$ fly -t ci tj -j basic-pipeline/job-hello-world --watch
started basic-pipeline/job-hello-world #2

initializing
running echo hello world
hello world
succeeded
```
