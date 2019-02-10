## 09 - Parameters

This section will show you how to parameterise your pipeline configuration. Use cases might be where you do not want to secret values in your pipeline (which may be in version control) but rather in a local file which gets parsed through to your pipeline.

Lets pass our values as arguments to our pipeline. They will be mapped in our `pipeline.yml` in this section:

```
...
      params:
        DB_HOSTNAME: ((db-hostname))
        DB_USERNAME: ((db-username))
```

Let's set the pipeline, and you will notice the parsed value will be the desired configuration:

```
$ fly -t ci sp -c pipeline.yml -p 09-parameters -v db-hostname=localhost -v db-username=superuser

jobs:
  job show-environment-names has been added:
+ name: show-environment-names
+ plan:
+ - task: show-environment-names
+   config:
+     platform: linux
+     image_resource:
+       type: docker-image
+       source:
+         repository: busybox
+     params:
+       DB_HOSTNAME: localhost
+       DB_USERNAME: superuser
+     run:
+       path: env

apply configuration? [yN]: y
pipeline created!
```

Unpause and trigger the job:

```
$ fly -t ci up -p 09-parameters
unpaused '09-parameters'

$ fly -t ci tj -j 09-parameters/show-environment-names -w
started 09-parameters/show-environment-names #1

initializing
running env
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
HOME=/root
DB_HOSTNAME=localhost
DB_USERNAME=superuser
USER=root
succeeded
```

That is one way of doing it, the other way is to have the parameter values in a local file, when setting the pipeline:

The local file, in my case `credentials.yml`:

```
$ cat credentials.yml
db-username: superuser
db-hostname: localhost
```

Then when setting the pipeline:

```
$ fly -t ci sp -c pipeline.yml -p 09-parameters -l credentials.yml
```
