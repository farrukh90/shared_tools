node {
    stage("Clone") {
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/farrukh90/shared_tools.git']]])
    }   
    stage("Build"){
        sh "docker build -t tools ."
    }
    stage("Tagging"){
        sh "docker tag tools:latest 713287746880.dkr.ecr.us-east-1.amazonaws.com/tools:latest"
    }
}






// node {
//     Clone 
//     Build 
//     Tagging 
//     Push 
//     Email 
// }