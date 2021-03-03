echo [all] > ../inventory.txt
aws ec2 describe-instances \
 --query 'Reservations[*].Instances[*].PublicIpAddress' \
 --region=us-west-2 \
 --output text >> ../inventory.txt
