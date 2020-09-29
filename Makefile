dist:
	javac com/evolution/algorithm/add/Add.java
	jar cvmf com/evolution/algorithm/add/manifest.mf add.jar com/evolution/algorithm/add/*.class

test:
	javac -encoding utf-8 -cp add.jar TestAdd.java
	java -classpath .:./add.jar TestAdd

# 使用 proguard 做代码混淆
dc:
	java -jar cfr-0.150.jar add.jar


.PHONY: clean

clean:
	-rm -rf com/evolution/algorithm/add/*.class
	-rm -rf *.class add.jar


