properties([parameters([string(defaultValue: '713287746880', description: 'Please provide your AWS account ', name: 'AWS_ACCOUNT', trim: true)])])



node {
    stage("Clone") {
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/farrukh90/shared_tools.git']]])
    }   
    stage("Build"){
        sh "docker build -t tools ."
    }
    stage("Tagging"){
        sh "docker tag tools:latest ${AWS_ACCOUNT}.dkr.ecr.us-east-1.amazonaws.com/tools:latest"
    }
    stage("Push Image"){
        sh "docker push ${AWS_ACCOUNT}.dkr.ecr.us-east-1.amazonaws.com/tools:latest"
    }
}






// node {
//     Clone 
//     Build 
//     Tagging 
//     Push 
//     Email 
// }