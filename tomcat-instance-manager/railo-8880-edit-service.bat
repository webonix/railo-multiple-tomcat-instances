@echo off

set JAVA_HOME=C:\Java\jdk1.7.0_45

set CATALINA_HOME=C:\Tomcat7
set CATALINA_BASE=C:\Tomcat7\servers\railo8880

set SERVICE_NAME=railo8880
set SERVICE_DISPLAY_NAME=Apache Tomcat Railo 8880
set SERVICE_DESCRIPTION=Apache Tomcat 'railo8880' instance based at C:\Tomcat7\servers\railo8880

tomcat7 service edit
