#!/bin/bash

# 设置路径变量
WEBAPP_SRC="/Users/yoyowu/NEU/Seattle-Airbnb-Web-Application/Voyage/src/main/webapp"
JAVA_SRC="/Users/yoyowu/NEU/Seattle-Airbnb-Web-Application/Voyage/src/main/java"
TOMCAT_HOME="/Users/yoyowu/NEU/Seattle-Airbnb-Web-Application/apache-tomcat-9.0.97"
DEPLOY_PATH="$TOMCAT_HOME/webapps/Voyage"

# 确保目标目录存在
mkdir -p "$DEPLOY_PATH/WEB-INF/classes"

# 监控文件变化并自动部署
fswatch -o "$WEBAPP_SRC" "$JAVA_SRC" | while read f; do
    echo "Detected change in $f"

    # 复制 webapp 文件
    if [[ $f == *"/webapp/"* ]]; then
        cp -r "$WEBAPP_SRC"/* "$DEPLOY_PATH/"
        echo "Copied webapp files"
    fi

    # 如果是 Java 文件变化，重新编译
    if [[ $f == *.java ]]; then
        cd "$DEPLOY_PATH/WEB-INF/classes"
        javac -cp "../lib/*:." voyage/servlet/*.java
        echo "Compiled Java files"
    fi

    echo "Deployment completed at $(date)"
done