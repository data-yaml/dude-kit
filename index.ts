// https://blog.mikaeels.com/how-to-create-an-iam-user-with-aws-cdk

import * as cdk from 'aws-cdk-lib';
import * as iam from 'aws-cdk-lib/aws-iam';

const ROLE_ARN = "arn:aws:iam::850787717197:role/Hackathon-Access";

export class IamUserStack extends cdk.Stack {
  constructor(scope: cdk.App, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    const user = new iam.User(this, 'IamUser', {
      userName: 'iam-user',
    });

    const policy = new iam.Policy(this, 'Policy', {
      policyName: 'IamUserPolicy',
      statements: [
        new iam.PolicyStatement({
          actions: ['s3:ListBucket'],
          resources: ['arn:aws:s3:::*'],
        }),
      ],
    });

    policy.attachToUser(user);
  }
}
