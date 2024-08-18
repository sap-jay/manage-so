sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'mpool.manageso',
            componentId: 'SalesOrderHeaderList',
            contextPath: '/SalesOrderHeader'
        },
        CustomPageDefinitions
    );
});