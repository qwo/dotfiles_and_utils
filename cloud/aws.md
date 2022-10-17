### AWS


iam_instance_profile

aws ec2 delete-key-pair --key-name stanley_temp 
aws ec2 import-key-pair --key-name stanley_temp --public-key-material fileb://stanley_temp.pub

assuming another role 
```

https://aws.amazon.com/premiumsupport/knowledge-center/iam-assume-role-error/
`aws sts get-session-token`
`aws sts get-caller-identity`
echo $(aws sts get-caller-identity  --output text)
498153169781 arn:aws:iam::498153169781:user/terraforme AIDAXH7B6EN24WW6DJ75U

arn:aws:iam::498153169781:role/org_systemsadmins

https://signin.aws.amazon.com/switchrole?roleName=org_systemsadmins&account=498153169781
```

Filtering

```
https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-output-format.html
 
 aws sts --output text get-session-token --query 'Credentials.AccessKeyId'
```

```

To connect to your instance using your own key and any SSH client

(Optional) Generate new SSH private and public keys

You can generate new SSH private and public keys, my_key and my_key.pub, using the following command:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-connect-methods.html#ec2-instance-connect-connecting-aws-cli
```
$ ssh-keygen -t rsa -f my_key
Push your SSH public key to the instance

or ssh-keygen -y -f mykey.pem > mykey.pub

Use the send-ssh-public-key command to push your SSH public key to the instance. If you launched your instance using Amazon Linux 2, the default user name for the AMI is ec2-user. If you launched your instance using Ubuntu, the default user name for the AMI is ubuntu.

The following example pushes the public key to the specified instance in the specified Availability Zone, to authenticate ec2-user.

$ aws ec2-instance-connect send-ssh-public-key \
    --instance-id i-09bd21f6fd4021fe3 \
    --availability-zone us-east-1 \
    --instance-os-user ec2-user \
    --ssh-public-key file://stanley_temp.pub
Connect to the instance using your private key

Use the ssh command to connect to the instance using the private key before the public key is removed from the instance metadata (you have 60 seconds before it is removed). Specify the private key that corresponds to the public key, the default user name for the AMI that you used to launch your instance, and the instance's public DNS name (if connecting over a private network, specify the private DNS name or IP address). Add the IdentitiesOnly=yes option to ensure that only the files in the ssh config and the specified key are used for the connection.

$ ssh -o "IdentitiesOnly=yes" -i my_key ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com

```
