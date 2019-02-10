## 06 - Job Inputs Pipeline

2 Inputs which represent a input resource for our application code and a input resource for our script that will call our application code. In this example our bash script from our master branch will call the python script in the python-tests branch.

eg. `application source code` and `testing` for running the tests

Set the pipeline:

```
$ fly -t ci sp -c pipeline.yml -p 06-input-jobs-pipeline
```

Unpause the pipeline:

```
$ fly -t ci up -p 06-input-jobs-pipeline
```
