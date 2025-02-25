pipeline {
    agent any
    environment {
        ARM_CLIENT_ID = credentials('AZURE_CLIENT_ID')
        ARM_CLIENT_SECRET = credentials('AZURE_CLIENT_SECRET')
        ARM_SUBSCRIPTION_ID = credentials('AZURE_SUBSCRIPTION_ID')
        ARM_TENANT_ID = credentials('AZURE_TENANT_ID')
    }
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/prathapk259/terraform-aks.git'
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
                sh 'terraform apply -auto-approve'
            }
        }
    }
}

