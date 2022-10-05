### AWS


To connect to your instance using your own key and any SSH client

(Optional) Generate new SSH private and public keys

You can generate new SSH private and public keys, my_key and my_key.pub, using the following command:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-connect-methods.html#ec2-instance-connect-connecting-aws-cli
```
$ ssh-keygen -t rsa -f my_key
Push your SSH public key to the instance

Use the send-ssh-public-key command to push your SSH public key to the instance. If you launched your instance using Amazon Linux 2, the default user name for the AMI is ec2-user. If you launched your instance using Ubuntu, the default user name for the AMI is ubuntu.

The following example pushes the public key to the specified instance in the specified Availability Zone, to authenticate ec2-user.

$ aws ec2-instance-connect send-ssh-public-key \
    --instance-id i-001234a4bf70dec41EXAMPLE \
    --availability-zone us-west-2b \
    --instance-os-user ec2-user \
    --ssh-public-key file://my_key.pub
Connect to the instance using your private key

Use the ssh command to connect to the instance using the private key before the public key is removed from the instance metadata (you have 60 seconds before it is removed). Specify the private key that corresponds to the public key, the default user name for the AMI that you used to launch your instance, and the instance's public DNS name (if connecting over a private network, specify the private DNS name or IP address). Add the IdentitiesOnly=yes option to ensure that only the files in the ssh config and the specified key are used for the connection.

$ ssh -o "IdentitiesOnly=yes" -i my_key ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com

```
