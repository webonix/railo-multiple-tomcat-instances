@echo off

set JAVA_HOME=C:\java\jdk7

set CATALINA_HOME=d:\Tomcat7
set CATALINA_BASE=d:\Tomcat7\servers\railo8880

set SERVICE_NAME=railo8880
set SERVICE_DISPLAY_NAME=Apache Tomcat Railo 8880
set SERVICE_DESCRIPTION=Apache Tomcat 'railo8880' instance based at d:\Tomcat7\servers\railo8880

tomcat7 %*
