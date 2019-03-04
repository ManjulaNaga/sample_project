pipeline {
    agent any {
        stages {
            stage('One') {
                steps {
                    echo 'Hi, this is Manjula'
                }
                stage('Two') {
                    steps {
                        input('Do you want to continue')
                    }
                }
                stage('Three') {
                    steps {
                        input('Do you want to proceed?')
                    }   
                }
                stage('Three') {
                    when { 
                        not {
                            branch 'master'
                        }
                    steps {
                        echo 'Hello'
                    }
                    }
                }
                stage('Four') {
                    parallel {
                        stage ('Unit Test') {
                            step {
                                echo ' running the unit test....'
                            }
                        }
                        stage ('Integration test') {
                            agent {
                                doker {
                                    reuseNode false
                                    image 'ubuntu'
                                }
                            }
                            steps {
                                echo 'Running the integration tets....'
                            }
                        }
                    }
                }
            }
        }
    }
}