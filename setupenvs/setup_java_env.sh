#! /bin/bash
if [ -z "$1" ] 
then
  echo "please input your java location, e.g: /usr/local/jdk1.7.0_51/"
  exit
fi

set JAVA_HOME = $1
echo "export JAVA_HOME=$JAVA_HOME" >> /etc/profile
echo "export CLASSPATH=$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/jre/lib/rt.jar" >> /etc/profile
echo "export PATH=$JAVA_HOME/bin:$PATH" >> /etc/profile
source /etc/profile

echo "finish setting java environment...."

java -version

