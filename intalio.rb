/#Common Components or Variables#/
BRE_COMPONENTS = [["com.intalio.bre-dtdeployment",BRE_VERSION]]
TMP_PROCESS_HANDLER_COMPONENT=[["security", INTALIO_SECURITY_VERSION]]

/#FOR CE VERSION#/
PXE_COMPONENTS =  [["database-connector",PXE_DATABASE_CONNECTOR_VERSION], ["helloworld-process",PXE_HELLOWORLD_VERSION],["jdbc-connector", PXE_JDBC_CONNECTOR_VERSION],["registry",PXE_REGISTRY_VERSION], ["tempo-pxe-integration",TEMPO_PXE_INTEGRATION_VERSION], ["workflow-processes",PXE_PROCESSES_VERSION]]
AXIS2_COMPONENTS = [["deploy-ws-service",AXIS2SERVICES_DEPLOY_WS_VERSION],["tempo-tms-service", TEMPO_VERSION],["tempo-tas-service",TEMPO_VERSION],["security-ws-service", INTALIO_SECURITY_VERSION]]
COMPONENTS = [["pxe",PXE_VERSION,PXE_COMPONENTS], ["bpms-console", BPMS_CONSOLE_VERSION, ""], ["bpms-analytics", BPMS_ANALYTICS_VERSION, ""], ["bpms-pdfgen", BPMS_PDFGEN_VERSION, ""], ["bpms-webmodeler", BPMS_WEBMODELER_VERSION, ""], ["bpms-dashboard",BPMS_DASHBOARD_VERSION,""], ["axis2-services",AXIS2SERVICES_DEPLOY_WS_VERSION,AXIS2_COMPONENTS], ["gi-webapp",GI_WEBAPP_VERSION,""], ["wsi",WSI_VERSION,""], ["ui-fw",UIFW_VERSION,""], ["wds", WDS_VERSION,""], ["xforms-manager",XFORMS_MANAGER_VERSION, ""],["tomcat-5",TOMCAT_5_VERSION,""],["server-common","",""],["tmp-process-handler", TMP_PROCESS_HANDLER_VERSION,TMP_PROCESS_HANDLER_COMPONENT], ["social", SOCIAL_VERSION, ""]]
DATABASE_COMPONENTS = [["h2",H2_VER],["mysql",MYSQL_VERSION]]
SERVER_NAMES =[["tomcat-5",TOMCAT_5_VERSION]]
CHOICES = [DATABASE_COMPONENTS, SERVER_NAMES]#Do not change the order of this. Incase an extra parrameter is added add it to the end.

/#FOR EE VERSION#/
PXE_HA_COMPONENTS =  [["database-connector",PXE_HA_DATABASE_CONNECTOR_VERSION],["helloworld-process",PXE_HA_HELLOWORLD_VERSION],["jdbc-connector", PXE_HA_JDBC_CONNECTOR_VERSION],["registry",PXE_HA_REGISTRY_VERSION],["tempo-pxe-integration",TEMPO_PXE_HA_INTEGRATION_VERSION], ["workflow-processes", PXE_HA_PROCESSES_VERSION]]
AXIS2_COMPONENTS_EE = [["deploy-ws-service",AXIS2SERVICES_DEPLOY_WS_VERSION], ["tempo-tms-common", TEMPO_VERSION],["tempo-tms-service", TEMPO_VERSION],["tempo-tas-service-with-alfresco", TEMPO_TAS_SERVICE_WITH_ALFRESCO_VERSION], ["security-ws-service", INTALIO_SECURITY_VERSION],["bam-service", BAM_SERVICE_VERSION]]
COMPONENTS_EE = [["bpms-dashboard",BPMS_DASHBOARD_VERSION, ""], ["pxe-ha", PXE_HA_VERSION,PXE_HA_COMPONENTS], ["bpms-console", BPMS_CONSOLE_VERSION, ""], ["bpms-analytics", BPMS_ANALYTICS_VERSION, ""], ["bpms-pdfgen", BPMS_PDFGEN_VERSION, ""], ["bpms-webmodeler", BPMS_WEBMODELER_VERSION, ""], ["bpms-team", TEMPO_VERSION, ""], ["bpms-adhocreport", BPMS_ADHOCREPORT_VERSION, ""], ["collaboration",COLLABORATION_VERSION,""], ["axis2-services", AXIS2SERVICES_DEPLOY_WS_VERSION, AXIS2_COMPONENTS_EE], ["webreport", WEBREPORT_VERSION,""],["gi-webapp", GI_WEBAPP_VERSION,""],["wsi", WSI_VERSION,""],["ui-fw", UIFW_VERSION, ""],["wds", WDS_VERSION, ""], ["bre", "", BRE_COMPONENTS],["apacheds-webapp", APACHEDS_WEBAPP_VERSION,""],["cas-webapp", CAS_WEBAPP_VERSION, ""],["server-common", "", ""],["tmp-process-handler", TMP_PROCESS_HANDLER_VERSION, TMP_PROCESS_HANDLER_COMPONENT], ["social", SOCIAL_VERSION, ""], ["consolidation", INTALIO_VERSION, ""]]
DATABASE_COMPONENTS_EE = [["oracle",ORACLE_VERSION],["postgres", POSTGRES_VERSION],["db2", DB2_VERSION],["h2", H2_VER],["sqlserver", SQLSERVER_VERSION],["mysql", MYSQL_VERSION],["sybase", SYBASE_VERSION],["ingres", INGRES_VERSION]]
SERVER_NAMES_EE =[["geronimo",""],["tomcat-5", TOMCAT_5_VERSION],["tomcat-6",TOMCAT_6_VERSION], ["tomcat-7",TOMCAT_7_VERSION],["tomcat-8","TOMCAT_8_VERSION"],["jboss",JBOSS_VERSION],["jboss43",JBOSS43_VERSION],["jboss43ear",""],["jboss61ear",""],["wildfly10",WILDFLY10_VERSION],["jboss7",JBOSS7_VERSION],["weblogic9",""],["weblogic10",""],["jetty9",JETTY9_VERSION],["jbosseap6",JBOSSEAP6_VERSION], ["intalio","war"], ["tomcatconfig", INTALIO_VERSION], ["jbossconfig", INTALIO_VERSION]]
CHOICES_EE = [DATABASE_COMPONENTS_EE, SERVER_NAMES_EE]#Do not change the order of this. Incase an extra parrameter is added add it to the end.

CHOICE_NAMES = ["database", "server"] #Do not change the order of this. Incase an extra parrameter is added add it to the end.

#INTALIO WAR Artifacts

APACHEDS_WEBAPP_WAR ="org.intalio.tempo:apacheds-webapp:war:#{APACHEDS_WEBAPP_VERSION}"
BPMSAJAX = "com.intalio.bpms.ajax:intalioajax:zip:#{BPMSAJAX_VERSION}"
BPMS_CONSOLE_WAR ="com.intalio.bpms.console:bpms-console:war:#{BPMS_CONSOLE_VERSION}"
BPMS_DASHBOARD_WAR ="com.intalio.bpms.dashboard:bpms-dashboard:war:#{BPMS_DASHBOARD_VERSION}"
BPMS_DASHBOARD_JAR ="com.intalio.bpms.dashboard:bpms-dashboard:jar:#{BPMS_DASHBOARD_VERSION}"
CAS_WEBAPP_WAR = "org.intalio.tempo:cas-webapp:war:#{CAS_WEBAPP_VERSION}"
COLLABORATION_WAR = "com.intalio.collaboration:collaboration:war:#{COLLABORATION_VERSION}"
COLLABORATION_JAR = "com.intalio.collaboration:collaboration:jar:#{COLLABORATION_VERSION}"
DATABASE_CONNECTOR = "com.intalio.bpms.connectors:com.intalio.bpms.connectors.jdbc.runtime:mar:#{PXE_DATABASE_CONNECTOR_VERSION}"
BRE_DTDEPLOYMENT_WAR ="com.intalio.bpms.designer.bre:com.intalio.bre-dtdeployment:war:#{BRE_VERSION}"
FDS_MODULE = "org.intalio.tempo:tempo-fds:mar:#{FDS_VERSION}"
FDS_WAR = "org.intalio.tempo:tempo-fds:war:#{FDS_VERSION}"
FDS_JAR = "org.intalio.tempo:tempo-fds:jar:#{FDS_VERSION}"
JDBC_CONNECTOR = "com.intalio.bpms.connectors:com.intalio.bpms.connectors.jdbc.runtime:mar:#{PXE_JDBC_CONNECTOR_VERSION}"
MONITORING_WAR = "com.intalio.bpms.monitoring:intalio-bpms-monitoring-webapp:war:#{MONITORING_VERSION}"
MOBILE_WORKFLOW_WAR = "com.intalio.mobi:mobi:war:#{MOBI_VERSION}"
MOBILE_WORKFLOW_JAR = "com.intalio.mobi:mobi:jar:#{MOBI_VERSION}"
SOCIAL_WAR = "com.intalio.social:social:war:#{SOCIAL_VERSION}"
SOCIAL_JAR = "com.intalio.social:social:jar:#{SOCIAL_VERSION}"
PXE_WAR = "com.intalio.bpms.pxe:ode-axis2-war:war:#{PXE_VERSION}"
PXE_HA_JDBC_CONNECTOR = "com.intalio.bpms.connectors:com.intalio.bpms.connectors.jdbc.runtime:mar:#{PXE_HA_JDBC_CONNECTOR_VERSION}"
PXE_HA_DATABASE_CONNECTOR = "com.intalio.bpms.connectors:com.intalio.bpms.connectors-jdbc-runtime:mar:#{PXE_HA_DATABASE_CONNECTOR_VERSION}"
PXE_HA_WAR = "com.intalio.bpms.pxe:ode-axis2ha-war:war:#{PXE_HA_VERSION}"
PXE_HA_XPATH_EXT = "org.intalio.tempo:tempo-processes-xpath-extensions:jar:#{PXE_HA_PROCESSES_VERSION}"
PXE_HA_TRANSPORT_HANDLER_MAR = "com.intalio.bpms.pxe:ode-axis2-transport-handler:mar:#{PXE_HA_VERSION}"
PXE_HA_TRANSPORT_HANDLER_JAR = "com.intalio.bpms.pxe:ode-axis2-transport-handler:jar:#{PXE_HA_VERSION}"
PXE_HA_AGENTS_JAR = "com.intalio.bpms.pxe:ode-agents:jar:#{PXE_HA_VERSION}"
TEMPO_PXE_INTEGRATION ="org.intalio.tempo:tempo-pxe-integration:jar:#{TEMPO_PXE_INTEGRATION_VERSION}"
TEMPO_PXE_HA_INTEGRATION ="org.intalio.tempo:tempo-pxe-integration:jar:#{TEMPO_PXE_HA_INTEGRATION_VERSION}"
TMP_PROCESS_HANDLER ="org.intalio.tmp:tmp-process-handler:mar:#{TMP_PROCESS_HANDLER_VERSION}"
TMS_SERVICE = "org.intalio.tempo:tempo-tms-service:aar:#{TEMPO_VERSION}"
TEMPO_TEAM_JAR = "org.intalio.tempo:tempo-team:jar:#{TEMPO_VERSION}"
UIFW_WAR = "org.intalio.tempo:tempo-ui-fw:war:#{UIFW_VERSION}"
WDS_WAR = "org.intalio.tempo:tempo-wds-service:war:#{WDS_VERSION}"
WDS_JAR = "org.intalio.tempo:tempo-wds-service:jar:#{WDS_VERSION}"
WEBREPORT_WAR = "com.intalio.bpms.bam:bam-webreport:war:#{BAM_SERVICE_VERSION}"
WEBREPORT_JAR = "com.intalio.bpms.bam:bam-webreport:jar:#{BAM_SERVICE_VERSION}"
WSI_WAR = "com.intalio.bpms.wsi:intalio-bpms-wsi:war:#{WSI_VERSION}"
WSI_JAR = "com.intalio.bpms.wsi:intalio-bpms-wsi:jar:#{WSI_VERSION}"
GI_WAR = "com.intalio.bpms.gi:ajax:war:#{GI_WEBAPP_VERSION }"
GI_JAR = "com.intalio.bpms.gi:ajax:jar:#{GI_WEBAPP_VERSION }"
XPATH_EXT = "org.intalio.tempo:tempo-processes-xpath-extensions:jar:#{PXE_PROCESSES_VERSION}"
XFORMS_WAR = "org.intalio.tempo:xforms-manager:war:#{XFORMS_MANAGER_VERSION}"
BPMS_CONSOLE = "com.intalio.bpms.console:bpms-console:jar:#{BPMS_CONSOLE_VERSION}"
BPMS_ADHOCREPORT_WAR = "com.intalio.bpms.adhocreport:bpms-adhocreport:war:#{BPMS_ADHOCREPORT_VERSION}"
BPMS_ADHOCREPORT_JAR = "com.intalio.bpms.adhocreport:bpms-adhocreport:jar:#{BPMS_ADHOCREPORT_VERSION}"
BPMS_ANALYTICS = "com.intalio.bpms.analytics:bpms-analytics:jar:#{BPMS_ANALYTICS_VERSION}"
BPMS_ANALYTICS_WAR ="com.intalio.bpms.analytics:bpms-analytics:war:#{BPMS_ANALYTICS_VERSION}"
BPMS_PDFGEN = "com.intalio.bpms.connectors:bpms-pdfgen:jar:#{BPMS_PDFGEN_VERSION}"
BPMS_PDFGEN_WAR ="com.intalio.bpms.connectors:bpms-pdfgen:war:#{BPMS_PDFGEN_VERSION}"
BPMS_WEBMODELER_WAR ="com.intalio.bpms:bpms-webmodeler:war:#{BPMS_WEBMODELER_VERSION}"

#EXTERNAL ARTIFACTS
ANNONGEN = "annogen:annogen:jar:0.1.0"
ANTLR = [ "antlr:antlr:jar:2.7.6" ]
APACHE_DERBY_TOOLS = "org.apache.derby:derbytools:jar:#{DERBY_VER}"
AXIS2_WAR = "org.apache.axis2:axis2-webapp:war:1.6.2"
BATIK = group(%w{
  batik-awt-util  batik-bridge      batik-css       batik-dom
  batik-ext       batik-extension   batik-gui-util  batik-gvt
  batik-parser    batik-script      batik-svg-dom   batik-svggen
  batik-swing     batik-transcoder  batik-util      batik-xml},
  :under=>"batik", :version=>"1.6")

BIRT_WAR  = "org.eclipse.birt:birt-webapp:war:#{BIRT_VERSION}"
BIRT_WAR_ARTIFACT  = artifact(BIRT_WAR)

BTM = {
  :core => "org.codehaus.btm:btm:jar:2.2.0",
  :tomcatlifecycle => "org.codehaus.btm:btm-tomcat55-lifecycle:jar:2.2.0"
}
CGLIB_NODEP="cglib:cglib-nodep:jar:2.2.2"
DB2_DRIVER = "db2:jcc:jar:#{DB2_VERSION}"
EASYMOCK = "easymock:easymock:jar:2.0"
EMAIL_CONNECTOR = "com.intalio.bpms.connectors:com.intalio.bpms.connectors.email:aar:#{EMAIL_CONNECTOR_VERSION}"
GERONIMO_JETTY = "org.apache.geronimo:geronimo-jetty6-jee5:zip:2.0.1"
GSON = ["com.google.code.gson:gson:jar:1.7.1"]
HSQLDB = "hsqldb:hsqldb:jar:1.8.0.7"
INGRES_OPENJPA = "com.ingres.jdbc:openjpa-jdbc-ingres:jar:0.1.0"
INTALIO_LICENSE = "com.intalio.bpms.license:license-core:jar:#{INTALIO_LICENSE_VERSION}"
INTALIO_LICENSE_GEN = "com.intalio.bpms.license:license-generator:jar:#{INTALIO_LICENSE_VERSION}"
JBI  = group("org.apache.servicemix.specs.jbi-api-1.0", :under=>"org.apache.servicemix.specs", :version=>"1.1.0")
JBOSS = "jboss:jboss-appserver:zip:#{JBOSS_VERSION}"
JBOSS43 ="jboss:jboss-appserver:zip:#{JBOSS43_VERSION}"
JBOSS7 = "jboss:jboss-appserver:zip:#{JBOSS7_VERSION}"
WILDFLY10 = "org.wildfly:server:zip:#{WILDFLY10_VERSION}"
JBOSS_OPENJPA = "org.jboss.as:jboss-as-jpa-openjpa:jar:#{JBOSS_OPENJPA_VERSION}"
JBOSSEAP6 = "jboss:jboss-appserver:zip:#{JBOSSEAP6_VERSION}"
JETTY9 = "org.eclipse.jetty:jetty-distribution:zip:#{JETTY9_VERSION}"
JCA = [ "javax.resource:connector-api:jar:1.5" ]
JIBX  = "jibx:jibx-run:jar:1.1-beta3"
SAXON = group(%w{ saxon saxon-xpath saxon-dom saxon-xqj }, :under => "net.sf.saxon", :version => "9.1.0.8")  
SPRING_ETC = ["org.springframework:spring-core:jar:#{SPRING_VERSION}",
            "org.springframework:spring-webmvc:jar:#{SPRING_VERSION}",
	    "org.springframework:spring-beans:jar:#{SPRING_VERSION}",
            "org.springframework:spring-context:jar:#{SPRING_VERSION}",
            "org.springframework:spring-web:jar:#{SPRING_VERSION}",
            "org.springframework:spring-expression:jar:#{SPRING_VERSION}",
            "org.springframework:spring-orm:jar:#{SPRING_VERSION}",
            "org.springframework:spring-tx:jar:#{SPRING_VERSION}",
            "org.springframework:spring-jdbc:jar:#{SPRING_VERSION}",
            "org.springframework:spring-test:jar:#{SPRING_VERSION}",
            "org.springframework:spring-oxm:jar:#{SPRING_VERSION}"
             ]
SPRING_ETC_324 = ["org.springframework:spring-core:jar:#{SPRING_VERSION_324}",
            "org.springframework:spring-webmvc:jar:#{SPRING_VERSION_324}",
	    "org.springframework:spring-beans:jar:#{SPRING_VERSION_324}",
            "org.springframework:spring-context:jar:#{SPRING_VERSION_324}",
            "org.springframework:spring-web:jar:#{SPRING_VERSION_324}",
            "org.springframework:spring-expression:jar:#{SPRING_VERSION_324}",
            "org.springframework:spring-orm:jar:#{SPRING_VERSION_324}",
            "org.springframework:spring-tx:jar:#{SPRING_VERSION_324}",
            "org.springframework:spring-jdbc:jar:#{SPRING_VERSION_324}",
            "org.springframework:spring-test:jar:#{SPRING_VERSION_324}"
             ]
SPRING_4 = ["org.springframework:spring-core:jar:4.1.1.RELEASE",
            "org.springframework:spring-context:jar:4.1.1.RELEASE",
            "org.springframework:spring-beans:jar:4.1.1.RELEASE",
            "org.springframework:spring-web:jar:4.1.1.RELEASE",
            "org.springframework:spring-webmvc:jar:4.1.1.RELEASE",
            "org.springframework:spring-aop:jar:4.1.1.RELEASE",
            "org.springframework:spring-jdbc:jar:4.1.1.RELEASE",
            "org.springframework:spring-tx:jar:4.1.1.RELEASE",
            "org.springframework:spring-orm:jar:4.1.1.RELEASE",
            "org.springframework:spring-expression:jar:4.1.1.RELEASE",
            "org.springframework:spring-oxm:jar:4.1.1.RELEASE",
            "org.springframework:spring-asm:jar:3.1.4.RELEASE"
            ]




SPRING_AOP = ["aopalliance:aopalliance:jar:1.0",
               "org.springframework:spring-aop:jar:#{SPRING_VERSION}"]
SPRING_AOP_324 = ["aopalliance:aopalliance:jar:1.0",
               "org.springframework:spring-aop:jar:#{SPRING_VERSION_324}"]

SPRING_ETC_SECURITY = [  "org.springframework:spring-security-config:jar:#{SPRING_VERSION}",
				"org.springframework:spring-security-core:jar:#{SPRING_VERSION}",
				"org.springframework:spring-security-web:jar:#{SPRING_VERSION}"]
STAX_API_INTALIO = "stax:stax-api:jar:1.0.1-intalio"
XOM = "xom:xom:jar:1.1"
XML_APIS = "xml-apis:xml-apis:jar:1.3.03"
PXE_XMLBEANS = { :xmlbeans=>"org.apache.xmlbeans:xmlbeans:jar:2.3.0",:xmlpublic=>"xmlbeans:xmlpublic:jar:2.3.0",:xbeanpath=>"xmlbeans:xbean_xpath:jar:2.3.0"}
WS_COMMONS          = struct(
  :axiom =>AXIOM,
  :neethi => NEETHI,
  :xml_schema => XMLSCHEMA
)
WSDL4J_INTALIO2 = [ "wsdl4j:wsdl4j:jar:1.6.3" ]
AXIS2_MODULES = struct(
 :mods => ["org.apache.rampart:rampart:mar:1.6.2",
           "org.apache.rampart:rahas:mar:1.6.2",
           "org.apache.axis2:addressing:mar:1.6.2",
           "org.apache.axis2:mex:mar:1.6.2"],
 :libs => [group("rampart-core", "rampart-policy", "rampart-trust",
                 :under=>"org.apache.rampart",
                 :version=>"1.6.2"),
           "org.apache.ws.security:wss4j:jar:1.6.4",
           "org.apache.santuario:xmlsec:jar:1.4.6",
           "org.apache.axis2:mex:jar:impl:1.6.2",
           "org.opensaml:opensaml:jar:2.5.1-1",
           "bouncycastle:bcprov-jdk15:jar:140",
           "org.opensaml:xmltooling:jar:1.3.2-1",
           "org.opensaml:openws:jar:1.4.2-1",
           "org.owasp.esapi:esapi:jar:2.0GA",
           "joda-time:joda-time:jar:1.6.2",
           BACKPORT]
)
BCPROV_JDK15 = "bouncycastle:bcprov-jdk15:jar:140"
RAMPART = group("rampart-core", "rampart-policy", "rampart-trust", :under=>"org.apache.rampart", :version=>"1.6.2")
AXIS2_MODULE_LIBS = ["org.apache.ws.security:wss4j:jar:1.6.4",
           "org.apache.santuario:xmlsec:jar:1.4.6",
           "org.apache.axis2:mex:jar:impl:1.6.2",
           "org.opensaml:opensaml:jar:2.5.1-1",
           "bouncycastle:bcprov-jdk15:jar:140",
           "org.opensaml:xmltooling:jar:1.3.2-1",
           "org.opensaml:openws:jar:1.4.2-1",
           "org.owasp.esapi:esapi:jar:2.0GA",
           "joda-time:joda-time:jar:1.6.2"]
TAS_ALFRESCO = group("axis", "web-service-client", "wss4j", "saaj", "bcprov-jdk15-137",  "jaxrpc",  "xalan",  "opensaml",  "xmlsec-1.4.1",  "activation",  "wsdl4j",  "mail",  :under => "alfresco", :version => "2.9.0B")

TEMPO_ALFRESCO_INTEGRATION = "com.intalio.tempo:tempo-alfresco-integration:jar:#{TEMPO_TAS_SERVICE_WITH_ALFRESCO_VERSION}"
ORGANIZATION_MAPPING = "org.intalio.tempo:tempo-organization-mapping:jar:#{TEMPO_VERSION}"
ALFRESCO_AXIS =  "alfresco:axis:jar:2.9.0B"
ALFRESCO_JAXRPC =  "alfresco:jaxrpc:jar:2.9.0B"
ALFRESCO_SAAJ = "alfresco:saaj:jar:2.9.0B"
ALFRESCO_WEBSERVICECLIENT = "alfresco:web-service-client:jar:2.9.0B"

JACKSON = ["org.codehaus.jackson:jackson-mapper-asl:jar:1.9.9","org.codehaus.jackson:jackson-core-asl:jar:1.9.9"]
HIBERNATE_VALIDATOR = "org.hibernate:hibernate-validator:jar:3.0.0.ga"
HIBERNATE = [
  "org.hibernate:hibernate:jar:3.2.4.sp1",
  "org.hibernate:hibernate-annotations:jar:3.3.0.ga",
  "org.hibernate:hibernate-commons-annotations:jar:3.3.0.ga",
  "org.hibernate:hibernate-tools:jar:3.2.0.beta9a",
  "cglib:cglib:jar:2.1_3",
  "asm:asm:jar:3.2"]

CONNECTOR_JDBC_CORE = "com.intalio.bpms.connectors:com.intalio.bpms.connectors-jdbc-core:jar:#{CONNECTOR_JDBC_VERSION}"

PXE_HIBERNATE = ["javassist:javassist:jar:3.12.0.GA",
                 "org.hibernate:hibernate-commons-annotations:jar:3.2.0.Final",
                 "org.hibernate.javax.persistence:hibernate-jpa-2.0-api:jar:1.0.1.Final",
                 "org.intalio.hibernate:hibernate-core-custom:jar:3.6.9.Final",
                 "asm:asm:jar:3.2",
                 "org.hibernate:hibernate-entitymanager:jar:3.6.9.Final",
                 #"org.hibernate:hibernate-annotations:jar:3.5.6-Final",
                 "antlr:antlr:jar:2.7.6",
                 "cglib:cglib:jar:2.1_3",
                 "net.sf.ehcache:ehcache:jar:1.2.3",
                 "org.hibernate:hibernate-validator:jar:3.1.0.GA"]

MYSQL_DRIVER = "mysql:mysql-connector:jar:#{MYSQL_VERSION}"
SQLSERVER_DRIVER = "microsoft:sqljdbc:jar:#{SQLSERVER_VERSION}"
INGRES_DRIVER = "com.ingres.jdbc:iijdbc:jar:#{INGRES_VERSION}"
SYBASE_DRIVER = "sybase:jconnect:jar:#{SYBASE_VERSION}"
ORACLE_DRIVER = "oracle.jdbc:ojdbc:jar:#{ORACLE_VERSION}"
JTDS_DRIVER="net.sourceforge.jtds:jtds:jar:#{JTDS_VERSION}"

TOMCAT_5 = "org.apache.tomcat:apache-tomcat:zip:#{TOMCAT_5_VERSION}"
TOMCAT_6 = "org.apache.tomcat:apache-tomcat:zip:#{TOMCAT_6_VERSION}"
TOMCAT_7 = "org.apache.tomcat:tomcat:zip:#{TOMCAT_7_VERSION}"
TOMCAT_8 = "org.apache.tomcat:tomcat:zip:#{TOMCAT_8_VERSION}"
TOMCAT_DERBY="com.intalio.bpms.derby:derby-tomcat-resource:jar:#{
BPMS_DERBY_TOMCAT_VERSION}"
SERVER_H2="com.intalio.bpms.h2database:h2-server-resource:jar:#{
BPMS_H2_SERVER_VERSION}"
TOMCAT_JULI = { 
  :adapters => "org.apache.tomcat.extras:tomcat-extras-juli-adapters:jar:#{TOMCAT_8_VERSION}", 
  :core =>     "org.apache.tomcat:tomcat-juli:jar:#{TOMCAT_8_VERSION}" }
NET_SF_CLICK = "net.sf.click:click:jar:0.17"
TRANQL = [ "tranql:tranql-connector:jar:1.1", APACHE_COMMONS[:primitives] ]
SERVICEMIX  = [  group("servicemix-core", :under=>"org.apache.servicemix", :version=>"3.3"),  
                 group("servicemix-soap", "servicemix-common","servicemix-shared", "servicemix-http", "servicemix-eip",:under=>"org.apache.servicemix",:version=>"2008.01"), 
                 group("servicemix-utils",:under=>"org.apache.servicemix", :version=>"1.0.0"),
                 "commons-httpclient:commons-httpclient:jar:3.0", 
                 "commons-codec:commons-codec:jar:1.2", 
                 "org.mortbay.jetty:jetty:jar:6.1.12rc1", 
                 "org.mortbay.jetty:jetty-client:jar:6.1.12rc1", 
                 "org.mortbay.jetty:jetty-sslengine:jar:6.1.12rc1", 
                 "org.mortbay.jetty:servlet-api-2.5:jar:6.1.12rc1", 
                 "org.mortbay.jetty:jetty-util:jar:6.1.12rc1", 
                 "org.codehaus.woodstox:wstx-asl:jar:3.2.2", 
                 "org.apache.geronimo.specs:geronimo-activation_1.1_spec:jar:1.0.1", 
                 "org.apache.geronimo.specs:geronimo-annotation_1.0_spec:jar:1.1", 
                 JAVAX[:javamail], 
                 "org.apache.geronimo.specs:geronimo-stax-api_1.0_spec:jar:1.0.1", 
                 "org.apache.geronimo.specs:geronimo-jms_1.1_spec:jar:1.1", 
                 "org.jencks:jencks:jar:2.1", 
                 "org.objectweb.howl:howl:jar:1.0.1-1", 
                 "org.apache.activemq:activemq-core:jar:4.1.1", 
                 "org.apache.activemq:activemq-ra:jar:4.1.1", 
                 "commons-beanutils:commons-beanutils:jar:1.7.0", 
                 "tranql:tranql-connector-derby-common:jar:1.1" ]
XSTREAM = "xstream:xstream:jar:1.2"

XBEAN  = [
  "org.apache.xbean:xbean-kernel:jar:3.3",
  "org.apache.xbean:xbean-server:jar:3.3",
  "org.apache.xbean:xbean-spring:jar:3.4.3",
  "org.apache.xbean:xbean-classloader:jar:3.4.3"
]

# Following is needed for AXIS2 JMS transport.
ACTIVEMQ_AXIS2      = ["org.apache.activemq:activemq-core:jar:5.2.0",
                       "org.apache.activemq:activeio-core:jar:3.1.0",
                        JAVAX[:management]]

ORBEON_AXIS = [
 "orbeon:axis-orbeon:jar:1.2.1",
 "orbeon:axis-jaxrpc:jar:1.2.1",
 "orbeon:axis-saaj:jar:1.2.1",
 "orbeon:axis-wsdl4j:jar:1.2.1-1.5.1"
]
ORBEON_XERCES = [
  group("xerces-resolver", "xerces-serializer", "xerces-xml-apis",
"xerces-xercesImpl", :under => "orbeon" , :version => "2_9_orbeon_20070711")
]
ORBEON_CORE = [
  group("orbeon", "orbeon-xforms-filter", "orbeon-resources-public",
"orbeon-resources-private", :under=>"ops", :version=>"3.6.0.200712061930"),
]
ORBEON_CUSTOM = [
  ORBEON_XERCES,
  "orbeon:jakarta-oro-orbeon:jar:2.0.8",
  #"orbeon:saxon-orbeon:jar:8_8_orbeon_20070817" is buggy, 
  # the saxon-orbeon jar below is a slightly modified version
  # that works
  "orbeon-saxon:orbeon-saxon:jar:8.8-intalio-2",
  "orbeon:saxpath:jar:dev_orbeon",
  "orbeon:xsltc-orbeon:jar:2.5.1",
  "orbeon:xalan-orbeon:jar:2.5.1",
  
  #  Not needed unless we want to force server caching for xforms
  # "orbeon:xmldb-exist:jar:1_1_1",
  # "orbeon:exist:jar:1.1.1",
  # "orbeon:xmlrpc:jar:1.2-patched-exist_1_1_1",
  # "orbeon:antlr:jar:antlr-2.7.6-exist_1_1_1",
  # "orbeon:exist-optional:jar:1.1.1"
]

ORBEON_COMMONS = [
  APACHE_COMMONS[:beanutils],
  APACHE_COMMONS[:codec],
  APACHE_COMMONS[:collections],
  APACHE_COMMONS[:digester],
  APACHE_COMMONS[:discovery],
  APACHE_COMMONS[:fileupload],
  APACHE_COMMONS[:httpclient],
  APACHE_COMMONS[:io],
  APACHE_COMMONS[:lang],
  APACHE_COMMONS[:pool],
  APACHE_COMMONS[:validator],
]

ORBEON_MSV = [
  group("msv", "isorelax", "relaxng-datatype","xsdlib", :under => "msv",
:version => "20070407")
]

ORBEON_LIBS_NO_JAXEN = [
  JAVAMAIL,
  ORBEON_AXIS,
  ORBEON_COMMONS,
  ORBEON_CORE,
  ORBEON_CUSTOM,
  ORBEON_MSV,
  DOM4J,
  GERONIMO_SPECS[:jms],
  "jdom:jdom:jar:b9",
  "struts:struts:jar:1.2.9",
  "jtidy:jtidy:jar:8.0-20060801.131059-3",
  "backport-util-concurrent:backport-util-concurrent:jar:2.2"
]

WSI_ORBEON_LIBS = [
  ORBEON_LIBS_NO_JAXEN,
  JAXEN
]


### End of the orbeon gamut ###

#Intalio modules#

DEPLOY_CLUSTERING  = ["org.intalio.deploy:deploy-impl:jar:#{AXIS2SERVICES_DEPLOY_WS_VERSION}","org.springframework:spring:jar:2.5.5"]
INTALIO_DEPLOY = group("deploy-impl", "deploy-api", "deploy-ws-common", "deploy-ws-client", :under=>"org.intalio.deploy",:version=>"#{AXIS2SERVICES_DEPLOY_WS_VERSION}")
ODE_LIBS = {
  :odeaxis2 => "com.intalio.bpms.pxe:ode-axis2:jar:#{ODE_VERSION}",
  :odebpelapi => "com.intalio.bpms.pxe:ode-bpel-api:jar:#{ODE_VERSION}",
  :odebpeldao => "com.intalio.bpms.pxe:ode-bpel-dao:jar:#{ODE_VERSION}",
  :odedaohb => "com.intalio.bpms.pxe:ode-dao-hibernate:jar:#{ODE_VERSION}",
  #:odedaojpa => "com.intalio.bpms.pxe:ode-dao-jpa:jar:#{ODE_VERSION}",
  :odebpelql => "com.intalio.bpms.pxe:ode-bpel-ql:jar:#{ODE_VERSION}",
  :odebpelstore => "com.intalio.bpms.pxe:ode-bpel-store:jar:#{ODE_VERSION}",
  :odejacob => "com.intalio.bpms.pxe:ode-jacob:jar:#{ODE_VERSION}",
  :odepxecluster => "com.intalio.bpms.pxe:ode-pxe-cluster:jar:#{ODE_VERSION}",
  :odeschedulersimple => "com.intalio.bpms.pxe:ode-scheduler-simple:jar:#{ODE_VERSION}",
  :odebpelapijca => "com.intalio.bpms.pxe:ode-bpel-api-jca:jar:#{ODE_VERSION}",
  :odebpelcompiler =>"com.intalio.bpms.pxe:ode-bpel-compiler:jar:#{ODE_VERSION}",
  :odebpelconnector =>"com.intalio.bpms.pxe:ode-bpel-connector:jar:#{ODE_VERSION}",
  :odebpelepr => "com.intalio.bpms.pxe:ode-bpel-epr:jar:#{ODE_VERSION}",
  :odebpelobj => "com.intalio.bpms.pxe:ode-bpel-obj:jar:#{ODE_VERSION}",
  :odebpelschemas => "com.intalio.bpms.pxe:ode-bpel-schemas:jar:#{ODE_VERSION}",
  :odejcara => "com.intalio.bpms.pxe:ode-jca-ra:jar:#{ODE_VERSION}",
  :odejcaserver => "com.intalio.bpms.pxe:ode-jca-server:jar:#{ODE_VERSION}",
  :odetools => "com.intalio.bpms.pxe:ode-tools:jar:#{ODE_VERSION}",
  :odeutils => "com.intalio.bpms.pxe:ode-utils:jar:#{ODE_VERSION}",
  :odebpelruntime => "com.intalio.bpms.pxe:ode-bpel-runtime:jar:#{ODE_VERSION}"
}

BRE_RUNTIME = {
  :dtdeployment => "com.intalio.bpms.designer.bre:com.intalio.bre-dtdeployment:jar:#{BRE_VERSION}",
  :dtbuilder => "com.intalio.bpms.designer.bre:com.intalio.bre-dtbuilder:jar:#{BRE_VERSION}",
  :dtmodel => "com.intalio.bpms.designer.bre:com.intalio.bre-dtmodel:jar:#{BRE_VERSION}" ,
  :dteditor => "com.intalio.bpms.designer.bre:com.intalio.bre-dteditor:jar:#{BRE_VERSION}"
 }

PXE = ODE_LIBS

CONSOLE = ["com.intalio.bpms.console-common:console-common-webapp:jar:#{BPMS_CONSOLE_VERSION}",
           "com.intalio.bpms.console-common:console-common-models:jar:#{BPMS_CONSOLE_VERSION}"]

TEMPO = {
  :uifw => "org.intalio.tempo:tempo-ui-fw:jar:#{TEMPO_VERSION}",
  :tmscommon => "org.intalio.tempo:tempo-tms-common:jar:#{TEMPO_VERSION}",
  :tmsservice => "org.intalio.tempo:tempo-tms-service:jar:#{TEMPO_VERSION}",
  :tmsaxis => "org.intalio.tempo:tempo-tms-axis:jar:#{TEMPO_VERSION}",
  :tmsclient => "org.intalio.tempo:tempo-tms-client:jar:#{TEMPO_VERSION}",
  :daonutbolts => "org.intalio.tempo:tempo-dao-nutsNbolts:jar:#{TEMPO_VERSION}",
  :tasservice => "org.intalio.tempo:tempo-tas-service:jar:#{TEMPO_VERSION}"
}
TEMPO_COMMON = TEMPO[:tmscommon]

TMP_CLIENT=["org.intalio.tempo.workflow.tmp:tmp-client:jar:#{TMP_CLIENT_VERSION}"]
JSON_JAVA="org.json:json:jar:20090211"
JETTISON = "org.codehaus.jettison:jettison:jar:1.2"

SHAREPOINT_CONNECTOR_ATTACHMENT = "com.intalio.tempo:sharepoint-connector-attachment:jar:#{SHAREPOINT_ATTACHMENT_VERSION}";
BPMN2_LIBS = ["org.eclipse:org.eclipse.bpmn2:jar:0.7.0.20100826221953"]
OSGI = "org.eclipse:osgi:jar:3.5.0.v20090520"
