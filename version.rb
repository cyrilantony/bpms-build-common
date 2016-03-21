INTALIO_VERSION = "7.5.1"

BIRT_VERSION = "4.3.1"
SPRING_VERSION = "3.1.2.RELEASE"
SPRING_VERSION_324 = "3.2.4.RELEASE"

CONNECTOR_JDBC_VERSION = "7.7.0-SNAPSHOT"

H2_VER = "1.3.176"
DERBY_VER = "10.8.2.2"
MYSQL_VERSION="5.1.34"
ORACLE_VERSION="6"
DB2_VERSION="9.2"
POSTGRES_VERSION="9.3-1100.jdbc3"
SQLSERVER_VERSION = "4"
INGRES_VERSION = "3.6.1"
SYBASE_VERSION = "4.3"
JTDS_VERSION = "1.3.1"

TOMCAT_5_VERSION = "5.5.33"
TOMCAT_6_VERSION = "6.0.16"
TOMCAT_7_VERSION = "7.0.68"
JBOSS_VERSION = "4.0.5.GA"
JBOSS43_VERSION ="4.2.3.GA"
JBOSS7_VERSION = "7.1.1.FINAL"
JBOSSEAP6_VERSION = "6.2.0.GA"
JETTY9_VERSION = "9.0.3.v20130506"

#The versions of the BPMS COMPONENTS can be set here
APACHEDS_WEBAPP_VERSION = "7.5.0"
AXIS2SERVICES_DEPLOY_WS_VERSION = "7.6.0"
BAM_SERVICE_VERSION="7.7.0-SNAPSHOT"
# This should point to designerria project
BPMSAJAX_VERSION = "7.6.0"
BPMS_COMMON_VERSION ="7.7.0-SNAPSHOT"
BPMS_CONSOLE_VERSION = "7.7.0-SNAPSHOT"
BPMS_DASHBOARD_VERSION = "7.7.0-SNAPSHOT"
BPMS_ADHOCREPORT_VERSION = "7.6.0"

BRE_VERSION = "7.6.0"
CAS_WEBAPP_VERSION= "6.0.0.40"
COLLABORATION_VERSION = "7.6.0"
BPMS_DERBY_TOMCAT_VERSION="1.7"
BPMS_H2_SERVER_VERSION = "1.0.0"
TEMPO_VERSION="7.7.0-SNAPSHOT"
FDS_VERSION = "#{TEMPO_VERSION}"
GI_WEBAPP_VERSION = "7.6.0"
INTALIO_SECURITY_VERSION = "7.7.0-SNAPSHOT"
INTALIO_LICENSE_VERSION="7.6.0"
MOBI_VERSION ="7.5.0"
MONITORING_VERSION = "1.0.0.04"
SOCIAL_VERSION = "7.6.0"

PXE_HA_VERSION="7.7.0-SNAPSHOT"
PXE_HA_DATABASE_CONNECTOR_VERSION = "7.7.0-SNAPSHOT"
PXE_HA_HELLOWORLD_VERSION = "7.6.0-SNAPSHOT"
PXE_HA_JDBC_CONNECTOR_VERSION = "5.1.0.009"
PXE_HA_PROCESSES_VERSION = "7.7.0-SNAPSHOT"
PXE_HA_REGISTRY_VERSION="1.0.3"
TEMPO_PXE_HA_INTEGRATION_VERSION = "7.5.0"

PXE_VERSION="7.7.0-SNAPSHOT"
PXE_DATABASE_CONNECTOR_VERSION = "5.2.0.074"
PXE_HELLOWORLD_VERSION = "0.3"
PXE_JDBC_CONNECTOR_VERSION = "5.1.0.009"
# Most of the time value of this will match value of PXE_HA_PROCESSES_VERSION & this will have default processes
PXE_PROCESSES_VERSION = "6.3.02"
PXE_REGISTRY_VERSION="1.0.3"
ODE_VALIDATOR_VERSION = "1.0.5"
ODE_VERSION = PXE_VERSION

REGISTRY_VERSION = PXE_HA_VERSION ?PXE_HA_REGISTRY_VERSION : PXE_REGISTRY_VERSION
TEMPO_PXE_INTEGRATION_VERSION = "1.0.9"
TEMPO_TAS_SERVICE="#{TEMPO_VERSION}"
TEMPO_TAS_SERVICE_WITH_ALFRESCO_VERSION="7.6.0"
TMP_CLIENT_VERSION="1.0.0.2"
TMP_PROCESS_HANDLER_VERSION="7.6.0"
UIFW_VERSION = "#{TEMPO_VERSION}"
WDS_VERSION = "#{TEMPO_VERSION}"
WEBREPORT_VERSION="#{BAM_SERVICE_VERSION}"
WSI_VERSION = "7.5.0"
XFORMS_MANAGER_VERSION = "6.0.0.56"
JBOSS_OPENJPA_VERSION = "7.2.0.Final"
EMAIL_CONNECTOR_VERSION = "7.7.0-SNAPSHOT"

MATH_VER = "3.4.1";
BPMS_ANALYTICS_VERSION = "1.0.0"

SHAREPOINT_ATTACHMENT_VERSION = "7.6.0"
BPMS_PDFGEN_VERSION = "7.7.0-SNAPSHOT"
BPMS_WEBMODELER_VERSION = "1.0.0-SNAPSHOT"
