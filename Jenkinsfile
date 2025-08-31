pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        AWS_DEFAULT_REGION    = 'ap-south-1' // Change as needed
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/tiwariabc/my-ec2.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        stage('Terraform Apply') {
            steps {
                input message: 'Approve EC2 deployment?'
                sh 'terraform apply -auto-approve tfplan'
            }
        }
        stage('Push Changes to GitHub') {
            steps {
                sh '''
                    git config user.email "jenkins@example.com"
                    git config user.name "Jenkins"
                    git add .
                    git commit -m "Automated EC2 deployment via Jenkins"
                    git push origin master
                '''
            }
        }
    }
}
