sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'mpool/manageso/test/integration/FirstJourney',
		'mpool/manageso/test/integration/pages/SalesOrderHeaderList',
		'mpool/manageso/test/integration/pages/SalesOrderHeaderObjectPage',
		'mpool/manageso/test/integration/pages/SalesOrderItemObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesOrderHeaderList, SalesOrderHeaderObjectPage, SalesOrderItemObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('mpool/manageso') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesOrderHeaderList: SalesOrderHeaderList,
					onTheSalesOrderHeaderObjectPage: SalesOrderHeaderObjectPage,
					onTheSalesOrderItemObjectPage: SalesOrderItemObjectPage
                }
            },
            opaJourney.run
        );
    }
);