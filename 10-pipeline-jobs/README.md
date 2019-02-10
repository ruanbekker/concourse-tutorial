## 10 - Pipeline Jobs

Building a Pipeline with more than one job, so that one job passing results to another job, upon success.

```
$ fly -t ci sp -c pipeline.yml -p 10-pipeline-jobs -l ../credentials.yml
$ fly -t ci up -p 10-pipeline-jobs
```
