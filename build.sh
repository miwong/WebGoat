#!/bin/sh

cd WebGoat-Lessons
mvn package

if [ $? -ne 0 ]; then
    exit 1
fi

#cp target/plugins/*.jar ../webgoat-container/src/main/webapp/plugin_lessons/
cp target/plugins/phishing-1.0.jar ../webgoat-container/src/main/webapp/plugin_lessons/
cp target/plugins/reflected-xss-1.0.jar ../webgoat-container/src/main/webapp/plugin_lessons/
cp target/plugins/csrf-1.0.jar ../webgoat-container/src/main/webapp/plugin_lessons/
cp target/plugins/csrf-prompt-by-pass-1.0.jar ../webgoat-container/src/main/webapp/plugin_lessons/
cp target/plugins/csrf-token-by-pass-1.0.jar ../webgoat-container/src/main/webapp/plugin_lessons/
cp target/plugins/sql-string-injection-1.0.jar ../webgoat-container/src/main/webapp/plugin_lessons/
cp target/plugins/back-doors-1.0.jar ../webgoat-container/src/main/webapp/plugin_lessons/
cp target/plugins/blind-numeric-sql-injection-1.0.jar ../webgoat-container/src/main/webapp/plugin_lessons/

cd ../webgoat-container
mvn package

