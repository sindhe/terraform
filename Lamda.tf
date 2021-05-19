resource "aws_lambda_function" "state_machine_lambdas" {
    function_name = "YOUR-FUNCTION-NAME"
    role          = "ROLE-ARN"
    handler       = "lambda_function.lambda_handler" 
    s3_bucket = "BUCKET-NAME_WITH-LAMBDA-DEPLOYMENT"
    s3_key    = "PATH-TO-LAMBDA-DEPLOYMENT"

    runtime = "python3.8"
    depends_on = [
    aws_s3_bucket_object.object,
    ]
}
