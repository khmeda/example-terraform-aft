{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
          "codebuild:BatchGetBuilds",
          "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:codebuild:${aws_region}:${account_id}:project/${codebuild_project_name}"
    },
    {
      "Action": [
          "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:${aws_region}:${account_id}:*"
    },
    {
      "Action": [
          "logs:CreateLogGroup",
          "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:${aws_region}:${account_id}:log-group:/aws/lambda/${codebuild_invoker_function_name}:*"
    }
  ]
}
