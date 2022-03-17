node {
    stage("Clone") {
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/farrukh90/shared_tools.git']]])
    }   
    stage("Build"){
        sh "docker build -t tools ."
    }
}






// node {
//     Clone 
//     Build 
//     Tagging 
//     Push 
//     Email 
// }