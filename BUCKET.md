# Free s3://nextflow-hackathon Bucket Access during Hackathon

Hi all,
Quilt (with help from AWS) is excited to offer everyone free, unlimited access to the
"s3://nextflow-hackathon" S3 bucket in the us-west-2 region for the duration of the Hackathon.

Just like or reply to this post in #shameless-promos,
and we will Slack you AWS credentials plus email you an invite to the hackathon-only Quilt Catalog
for browsing and sharing your datasets [but not use your email any other way].

You can use the bucket directly, or via the newly-released native nf-quilt plugin.
Just use your Slack username (no spaces) as the package prefix in the Quilt+ URI, e.g.:

```sh
nextflow run nf-core/sarek -profile test,docker -plugins nf-quilt --outdir "quilt+s3://nextflow-hackathon#package=ErnestPrabhakar/sarek"
```

Then you (or anyone else with an  account in the hackathon Catalog) can browse the results at:
<https://nf-hackathon.quiltdata.com/b/nextflow-hackathon/packages/>

You can also use the text field in the upper left to add any public bucket to the Catalog.
Contact me directly if you'd like to add non-public buckets (requires cross-account permissions).
