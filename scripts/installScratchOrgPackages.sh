#!/bin/bash

echo "*** Installing required packages ..."

echo "*** Installing CBP Branding Set ..."
sfdx force:package:install --package 04t4W0000038TK6QAM -w 1000


#echo "*** Product Catalog: https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3000000B5Y04EAF"
#sfdx force:package:install --package 04to0000000UxhRAAS -w 1000

echo "*** Zenkraft...Get ready to say 'Y' to access to 3rd party websites ..."
#echo "*** Zenkraft: https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3A00000DvLFvUAN"
sfdx force:package:install --package 04t4I0000004DGqQAM -w 1000


# UNNOFICIAL SF COMPONENTS
echo "*** FLOW ACTION AND SCREEN COMPONENT BASEPACKS: https://unofficialsf.com/introducing-flowbasecomponents/"
sfdx force:package:install --package 04t4W000002vyNZQAY -w 1000 -u CBPWHM

sfdx force:package:install --package 04t5G000004PucZQAS -w 1000 -u CBPWHM


echo "*** DATATABLE – LIGHTNING WEB COMPONENT FOR FLOW SCREENS: https://unofficialsf.com/datatable-lightning-web-component-for-flow-screens-2/"
sfdx force:package:install --package 04t5G000004PuWuQAK -w 1000 -u CBPWHM

echo "*** The Record Detail Component: https://unofficialsf.com/the-recorddetail-component/"
sfdx force:package:install --package 04t5G000004PuVhQAK -w 1000 -u CBPWHM

echo "*** Introducing Flow Buttons, Courtesy of Ryan Cox: https://unofficialsf.com/introducing-flow-buttons-courtesy-of-ryan-cox/"
sfdx force:package:install --package 04tB0000000P3LNIA0 -w 1000 -u CBPWHM

echo "*** The Horizontal Rule Flow Screen Component: https://unofficialsf.com/the-horizontal-rule-flow-screen-component/"
sfdx force:package:install --package 04tB00000006grz -w 1000 -u CBPWHM

echo "*** Navigate Everywhere – Flow Action: https://unofficialsf.com/navigate-everywhere-flow-action//"
sfdx force:package:install --package 04tf4000004PsrUAAS -w 1000 -u CBPWHM

echo "*** Custom Flow Navigation Buttons???!????"
sfdx force:package:install --package 04t4x000000YwSMAA0 -w 1000 -u CBPWHM

# SALESFORCE LABS COMPONENTS
echo "*** Activity Scorecard Component: https://appexchangejp.salesforce.com/appxListingDetail?listingId=a0N3u00000MBd62EAD&channel=recommended..."
sfdx force:package:install --package 04t4N000000omg3QAA -w 1000 -u CBPWHM

echo "*** Customisable Flow Header & Footer with Progress Indicator: https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3A00000EczujUAB..."
sfdx force:package:install --package 04t1t0000034vZjAAI -w 1000 -u CBPWHM
