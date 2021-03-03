#!/bin/bash

echo "*** Installing required packages ..."

echo "*** Installing CBP Branding Set ..."
sfdx force:package:install --package 04t4W0000038TK6QAM -w 1000


#echo "*** Product Catalog: https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3000000B5Y04EAF"
#sfdx force:package:install --package 04to0000000UxhRAAS -w 1000

echo "*** Zenkraft...Get ready to say 'Y' to access to 3rd party websites ..."
#echo "*** Zenkraft: https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3A00000DvLFvUAN"
sfdx force:package:install --package 04t4I0000004DGqQAM -w 1000


