pipeline {
    agent any
    tools {
       terraform 'terraform'
    }
    stages {
        stage('Git checkout') {
           steps{
                git branch: 'main', credentialsId: 'Git-Credentials', url: 'https://github.com/SivaRoopa/terraform-awsrds-mysql-jenkins.git'
            }
        }
//          stage('Terraform Init & Plan') {
//             steps{
//                 sh 'terraform init'
//                 sh 'terraform plan'
//             }
//         }
//         stage('terraform format check') {
//             steps{
//                 sh 'terraform fmt'
//             }
//         }
//         stage('terraform Validate') {
//             steps{
//                 sh 'terraform validate'
//             }
//         }
        
        // stage('terraform apply') {
        //     steps{
        //         sh 'terraform apply --auto-approve'
        //     }
        // }
    }

    
}
