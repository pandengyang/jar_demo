dist:
	javac com/evolution/algorithm/add/Add.java
	jar cvmf com/evolution/algorithm/add/manifest.mf add.jar com/evolution/algorithm/add/*.class

test:
	javac -cp add.jar TestAdd.java
	java TestAdd

.PHONY: clean

clean:
	-rm -rf com/evolution/algorithm/add/*.class
	-rm -rf *.class *.jar


