@echo off

set CATALINA_HOME=C:\Tomcat7
set CATALINA_BASE=C:\Tomcat7\servers\railo8890

set SERVICE_NAME=railo8890
set SERVICE_DISPLAY_NAME=Apache Tomcat Railo 8890
set SERVICE_DESCRIPTION=Apache Tomcat 'railo8890' instance based at C:\Tomcat7\servers\railo8890

tomcat7 %*
