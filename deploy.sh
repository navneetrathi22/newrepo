#!/bin/bash

##############################################################

#This script is written by N. N. Rathi.

#on 17-10-2016

#

#This script will use scp to stop tomcat copy war and start server.

#

###############################################################

#

SRCPATH="/opt/fddata/ecom/applications"

SRCSERVER=console

SRCUSER=root

console=( FDBatchClient )

crm=(FDCRM FDERPSy FDRulesAdmin)

mob=( FDMobileServices )

pl=( FDStoreFront )

sap=( FDService )

sl=( FDService )

web=(FDService FDERPService FDRulesAdminService)

####################################################################

#

#Below function is a core function....

#

####################################################################

#parameter to remote functions

#$1 filename

#$2 path name

#$3 remote server name

copy_remote()

{

#echo "stoping Tomcat server...on $server"

echo "copy data on $SRCPATH/$1/$1.war from  $SRCSERVER server to $2on path $remotepath "

#scp -3 $SRCSERVER:$SRCPATH/$1/$1.war $3:2/

}

deploy_Console()

{

 

for i in "${console[@]}"

do

copy_remote  $i "/usr/share/tomcat7/webapps" $console

done
}

 

deploy_CRM()

{

echo "dummy data"

}

 

deploy_CMS()

{

echo "dummy data"

}

 

deploy_WEB()

{

echo "dummy data"

}

 

deploy_MOB()

{

echo "dummy data"

}

 

deploy_PL()

{

echo "dummy data"

}

 

deploy-SAP()

{

echo "dummy data"

}

 

deploy_SL()

{

echo "dummy data"

}

 

deplot_ERPsy()

{

echo "dummy data"

}

 

##### Main

deploy_Console
