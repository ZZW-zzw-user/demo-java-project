pipeline {
    agent any
    stages {
        stage('代码拉取') {
            steps {
                echo "代码已从GitHub拉取完成"
            }
        }
        stage('Maven打包') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('构建Docker镜像zzw的哦') {
            steps {
                sh 'docker build -t demo-java:${BUILD_NUMBER} .'
            }
        }
    }
}
