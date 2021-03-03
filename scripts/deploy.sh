echo "*** Pushing metadata to scratch org ..."
sfdx force:source:push

echo "*** Deploying metadata to target org ..."
sfdx force:source:deploy --targetusername CBPWHMScratch --sourcepath force-app

echo "*** Deleting Data ..."
sfdx force:apex:execute -f scripts/apex/deleteData.apex -u CBPWHMScratch

echo "*** Re-Importing Data ..."
sfdx sfdmu:run --sourceusername csvfile --targetusername CBPWHMScratch -p data

echo "*** Setting up Remote Site Settings ..."
sfdx force:apex:execute -f scripts/apex/createRemoteSiteSettings.apex -u CBPWHMScratch