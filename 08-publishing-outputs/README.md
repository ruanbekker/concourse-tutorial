## 08 - Publishing Outputs

With outputs we can also modify a git repository. In this example we will update a file `bumpme` with the current date when the job gets triggered.

Always remember to not store secret information in git.

Set the pipeline, unpause it and trigger the job:

```
$ fly -t ci sp -c pipeline.yml -p 08-publishing-outputs
$ fly -t ci up -p 08-publishing-outputs
$ fly -t ci tj -j 08-publishing-outputs/job-bump-date
```

The updated file will be under `08-publishing-outputs/bumpdate`
