#! /bin/bash
HADOOP_PATH=$1
if [ -z "$1" ] 
then
  echo "please input the path to hadoop, e.g: /opt/java/opensource/research/hadoop-2.3.0"
  read -p "You missed the path to hadoop, Do you want to download it now? (y or N):"
  case $REPLY in
   y|Y) 
     wget http://mirrors.hust.edu.cn/apache/hadoop/common/hadoop-2.3.0/hadoop-2.3.0.tar.gz
     tar zxvf hadoop-2.3.0.tar.gz
     cd hadoop-2.3.0
     HADOOP_PATH = "`pwd`";;
   *)
     echo "please provide the path to extacted binary hadoop"
     exit;;
  esac
fi

cd $HADOOP_PATH

bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-2.3.0.jar wordcount README.txt output

