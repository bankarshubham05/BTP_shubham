sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/shubham/purchasedorderapp/test/integration/FirstJourney',
		'com/shubham/purchasedorderapp/test/integration/pages/POsList',
		'com/shubham/purchasedorderapp/test/integration/pages/POsObjectPage',
		'com/shubham/purchasedorderapp/test/integration/pages/POItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, POsList, POsObjectPage, POItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/shubham/purchasedorderapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePOsList: POsList,
					onThePOsObjectPage: POsObjectPage,
					onThePOItemsObjectPage: POItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);