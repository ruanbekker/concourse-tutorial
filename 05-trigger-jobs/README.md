## 05 - Triggers

In this example we will use 2 types of triggers:

- Whenever there's a commit on our git resource for our job-hello-world
- A timed trigger set to trigger every 2 minutes for our job-timed-hello-world

```
$ fly -t ci sp -c pipeline.yml -p 05-timed-pipeline
$ fly -t ci up -p 05-timed-pipeline
```

To see the status of the builds for this pipeline:

```
$ fly -t ci builds -p 05-timed-pipeline

id  pipeline/job                             build  status     start                     end                       duration
49  05-timed-pipeline/job-timed-hello-world  4      succeeded  2019-02-10@12:55:53+0200  2019-02-10@12:56:06+0200  13s
48  05-timed-pipeline/job-timed-hello-world  3      succeeded  2019-02-10@12:53:52+0200  2019-02-10@12:54:06+0200  14s
47  05-timed-pipeline/job-timed-hello-world  2      succeeded  2019-02-10@12:51:42+0200  2019-02-10@12:51:55+0200  13s
46  05-timed-pipeline/job-timed-hello-world  1      succeeded  2019-02-10@12:49:41+0200  2019-02-10@12:49:58+0200  17s
45  05-timed-pipeline/job-hello-world        1      succeeded  2019-02-10@12:49:41+0200  2019-02-10@12:49:54+0200  13s
```
