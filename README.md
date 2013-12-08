Railo - multiple tomcat instances
===============================

Multiple Railo servers on one Tomcat

download and install tomcat 7
d:\tomcat7


download tomcat multiple instance bat files
D:\tomcat7\tomcat-instance-manager

edit tomcat7.bat (line 207) add %CATALINA_HOME%\bin\tomcat-juli.jar;
set PR_CLASSPATH=%CATALINA_HOME%\bin\bootstrap.jar;%CATALINA_HOME%\bin\tomcat-juli.jar;


Download Railo Instance for Tomcat
D:\tomcat7\servers\railo-server
copy railo-server - port number
D:\tomcat7\servers\railo8890
edit D:\tomcat7\servers\railo8890\railo-server.bat
 - JAVA_HOME=C:\java\jdk7
 - CATALINA_HOME=d:\Tomcat7
 - CATALINA_BASE=%CATALINA_HOME%\servers\railo8890
 - port number descriptions and paths


edit D:\tomcat7\servers\railo8890\conf\server.xml
set ports for (search for 888)
 <Server port="8885" shutdown="SHUTDOWN">
 
     <Connector port="8880" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8883" />

    <Connector port="8889" protocol="AJP/1.3" redirectPort="8883" />

and path to default web root
	  <Host name="localhost" appBase="webapps" >
	  	<Alias>railo</Alias>
        <Context path="" docBase="d:\Tomcat7\servers\railo8880\www" />
      </Host>  

edit D:\tomcat7\servers\railo8890\conf\web.xml
 - params 'configuration' and 'railo-web-directory'
   eg d:\Tomcat7\servers\railo8880\conf\railo-web\{web-context-label}
      .\servers\railo8880\conf\railo-web\{web-context-label}

Download Railo WAR
open as archive
copy lib to 
copy www to 


start Railo instance
D:\tomcat7\servers\railo8890>railo-server.bat start

Browser to default web site
http://localhost:8890/


Edit server.xml to add more hosts


Windows Servicer - TODO
