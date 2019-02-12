## 03 - Task Scripts:

The task configuration shows us the input name and the path for the executable script.

With this configuration, it uploads the current working directory to concourse, and the data inside the directory gets placed on the container's working directory: `03-task-scripts`, which is the name of the input.

```
$ fly -t ci e -c task_show_hostname.yml

executing build 39 at http://10.20.30.40/builds/39
initializing
03-task-scripts: 347.15 KiB/s 0s
running ./03-task-scripts/task_show_hostname.sh
Hostname is: 3ccb3c28-d452-4068-5ea1-101153803d93
succeeded
```
