# GNU Makefile
JAR = /usr/bin/jar
JAVA = /usr/bin/java
JAVAC = /usr/bin/javac

JFLAGS = -g 
.SUFFIXES: wsMercado/.java .class
.java.class:
	$(JAVAC) $(JFLAGS) wsMercado\$*.java

default: MercadoServidor MercadoServidorImpl MercadoServidorPublisher

MercadoServidorImpl: wsMercado/MercadoServidorImpl.java
	$(JAVAC) $(JFLAGS) wsMercado/MercadoServidorImpl.java

MercadoServidor: wsMercado/MercadoServidor.java
	$(JAVAC) $(JFLAGS) wsMercado/MercadoServidor.java

MercadoServidorPublisher: wsMercado/MercadoServidorPublisher.java
	$(JAVAC) $(JFLAGS) wsMercado/MercadoServidorPublisher.java

clean:
	rm -f wsMercado/*.class 
