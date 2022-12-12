pipeline {
    agent any
    tools {
       terraform 'terraform'
    }

    parameters {
        string(name: 'environment', defaultValue: 'terraform', description: 'Workspace/environment file to use for deployment')
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
        booleanParam(name: 'destroy', defaultValue: false, description: 'Destroy Terraform build?')

    }


     environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }


    stages {
        stage('checkout') {
            steps {
                 script{
                            git branch: 'main', credentialsId: 'Git-Credentials', url: 'https://github.com/SivaRoopa/terraform-awsrds-mysql-jenkins.git'
                        }
                    }
                }
            
} }
