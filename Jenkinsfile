pipeline {
    agent any
    tools {
        maven 'maven3' // 和全局配置的Maven名称保持一致
    }
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
        stage('构建Docker镜像zzw11的哦') {
            steps {
                sh 'docker build -t demo-java:${BUILD_NUMBER} .'
            }
        }
    }
}
