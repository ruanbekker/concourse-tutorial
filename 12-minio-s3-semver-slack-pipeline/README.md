## Concourse Pipeline with Semver S3 and Slack

Pipeline does the following:
- Detects changes on `README.md`
- Updates the version file in the `version-readme` branch
- Writes an object to minio
- Reads the object from minio
- Sends slack notifications on success

![](https://user-images.githubusercontent.com/567298/54077152-568f6100-42bd-11e9-8217-be65f3bd9d3c.png)
