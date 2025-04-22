sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/storyList',
		'project1/test/integration/pages/storyObjectPage',
		'project1/test/integration/pages/taskObjectPage'
    ],
    function(JourneyRunner, opaJourney, storyList, storyObjectPage, taskObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThestoryList: storyList,
					onThestoryObjectPage: storyObjectPage,
					onThetaskObjectPage: taskObjectPage
                }
            },
            opaJourney.run
        );
    }
);