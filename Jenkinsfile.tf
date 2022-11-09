pipeline{
    agent any 
        tools {
        terraform 'terraform'
    }
    stages{
        stage('GitHub Checkout'){
            steps{
            git branch: 'main', credentialsId: '385a286c-9bcd-45dd-b85a-c91762957b79', url: 'https://github.com/juliomunin/Treinamento.git'
            }
        }
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        
        stage('Terraform Plan'){
            steps{
                sh 'terraform plan'
            }
        }
    }

}