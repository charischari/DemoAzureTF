pipeline {
                agent any
                tools {
                                terraform 'MyTerraform'
                }
                stages {
                                stage('Git Checkout'){
                                                steps{
                                                                git credentialsId: '8c898fa8-3456-42d0-ba97-35bb3a040581', url: 'https://github.com/charischari/DemoAzureTF'
                                                }
                                } 
                                stage('Terraform Init'){
                                                steps{
                                                                sh label: '', script: 'terraform init'
                                                }
                                } 
                                stage('Terraform Apply'){
                                                steps{
                                                                sh label: '', script: 'terraform apply --auto-approve'
                                                }
                                } 
                }
}
