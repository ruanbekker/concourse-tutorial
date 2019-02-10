## 07 - Pass Task Outputs to Task Inputs

Passing data from one container to another container

```
$ fly -t ci sp -c pipeline.yml -p 07-task-outputs-to-inputs-pipeline
$ fly -t ci up -p 07-task-outputs-to-inputs-pipeline
$ fly -t ci tj -j 07-task-outputs-to-inputs-pipeline/job-pass-files 
```
