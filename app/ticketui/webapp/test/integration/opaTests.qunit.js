sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ticketui/test/integration/FirstJourney',
		'ticketui/test/integration/pages/EmployeeSetList',
		'ticketui/test/integration/pages/EmployeeSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeSetList, EmployeeSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ticketui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeSetList: EmployeeSetList,
					onTheEmployeeSetObjectPage: EmployeeSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);