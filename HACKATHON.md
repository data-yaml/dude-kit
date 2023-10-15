# AWS Credentials

Here are your AWS credentials for accessing the `s3://nextflow-hackaton` bucket.
Be sure to add them to `~/.aws/credentials` as, e.g.:

```ini
[hackathon]
aws_access_key_id = <AccessKeyId>
aws_secret_access_key = <SecretAccessKey>
```

Then you can test them with:

```sh
aws --profile hackathon --region us-west-2 s3 ls s3://nextflow-hackathon
```

You will also get an invite to the nf-hackathon Quilt stack.
Once you set a password, you can view the resulting packages at:

<https://nf-hackathon.quiltdata.com/b/nextflow-hackathon/packages/>
