#!/bin/bash

echo "*** Creating scratch org ..."
sfdx force:org:create -f config/project-scratch-def.json --setdefaultusername --setalias CBPWHMScratch -d 30

echo "*** Installing required packages ..."
sh scripts/installScratchOrgPackages.sh

echo "*** Pushing metadata to scratch org ..."
sfdx force:source:push

read -n1 -s -r -p $'Press [SPACE] to continue...\n' key

echo "*** Create Contactor User ..."
#sfdx force:user:create -a eWRTSScratch_Contractor email=davidlarrimoresalesforce@gmail.com firstName=Chris lastName=Contractor -f config/contractor-user-def.json

echo "*** Assigning permission set to your users ..."
sfdx force:user:permset:assign -n CBPWHM_Demo_Admin -u CBPWHMScratch

echo "*** Generating password for your users ..."
sfdx force:user:password:generate --targetusername CBPWHMScratch

echo "*** Creating data"
#sfdx sfdmu:run --sourceusername csvfile --targetusername CBPWHMScratch -p data

echo "*** Setting up debug mode..."
sfdx force:apex:execute -f scripts/apex/setDebugMode.apex

echo "*** Setting up Remote Site Settings..."
#sfdx force:apex:execute -f scripts/apex/createRemoteSiteSettings.apex

echo "*** Opening Org"
#sfdx force:org:open
sfdx force:org:open -p /lightning/page/home
