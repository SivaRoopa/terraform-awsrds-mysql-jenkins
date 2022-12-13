pipeline {
    agent any
    tools {
        "org.jenkinsci.plugins.terraform.TerraformInstallation" "terraform-0.11.8"
    }
    parameters {
        string(name: 'WORKSPACE', defaultValue: 'development', description:'setting up workspace for terraform')
    }
    environment {
        TF_HOME = tool('terraform-0.11.8')
        TF_IN_AUTOMATION = "true"
        PATH = "$TF_HOME:$PATH"
        ACCESS_KEY = credentials('AWS_ACCESS_KEY_ID')
        SECRET_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    stages {
            
            stage('Git checkout') {
            steps{
                git branch: 'main', credentialsId: 'Git-Credentials', url: 'https://github.com/SivaRoopa/terraform-awsrds-mysql-jenkins.git'
                }
            }
            stage('Terraform Init'){
            steps {
                
                    bat "terraform init -input=false"
        } }

            stage('Terraform Validate'){
                steps {
                
                    bat "terraform validate"
                }
            }
            stage('Terraform Plan'){
                steps {
                
                    bat "terraform validate"
                }
            }
            stage('Terraform Apply'){
                steps {
                
                    bat "terraform validate"
                }
            }


    }
    }
