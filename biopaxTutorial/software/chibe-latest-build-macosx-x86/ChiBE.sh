export JAVA_DIR=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
if [ -d "$JAVA_DIR" ]
then
  $JAVA_DIR/bin/java -Xmx1024M -XstartOnFirstThread -d32 -da -jar ChiBE-macosx.jar
else
  java -Xmx1024M -XstartOnFirstThread -d32 -da -jar ChiBE-macosx.jar
fi

