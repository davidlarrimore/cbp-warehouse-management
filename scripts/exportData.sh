


echo "*** Pull Data from Dev..."
#sfdx sfdmu:run --sourceusername CBPWHMScratch --targetusername csvfile -p data

echo "*** Push Data from Scratch CSV to Prod..."
#sfdx sfdmu:run --sourceusername csvfile --targetusername CBPWHM -p data

echo "*** Push Data from Scratch to Prod..."
#sfdx sfdmu:run --sourceusername CBPWHMScratch --targetusername CBPWHM -p data

