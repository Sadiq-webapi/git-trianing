pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = "ap-south-2"
        BUCKET_NAME           = "my-unique-bucket-name-12345" // must be globally unique
    }

    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }

        stage('Create S3 Bucket') {
            steps {
                script {
                    sh """
                        aws s3api create-bucket \
                          --bucket $BUCKET_NAME \
                          --region $AWS_DEFAULT_REGION \
                          --create-bucket-configuration LocationConstraint=$AWS_DEFAULT_REGION
                    """
                }
            }
        }
    }

    post {
        success {
            echo "✅ S3 bucket $BUCKET_NAME created successfully in region $AWS_DEFAULT_REGION"
        }
        failure {
            echo "❌ Failed to create S3 bucket"
        }
    }
}
