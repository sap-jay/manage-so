using { managesalesorderSrv } from '../srv/service.cds';

annotate managesalesorderSrv.SalesOrderHeader with @UI.HeaderInfo: { TypeName: 'Sales Order Header', TypeNamePlural: 'Sales Order Headers', Title: { Value: salesDocument } };
annotate managesalesorderSrv.SalesOrderHeader with {
  ID @UI.Hidden @Common.Text: { $value: salesDocument, ![@UI.TextArrangement]: #TextOnly }
};
annotate managesalesorderSrv.SalesOrderHeader with @UI.Identification: [{ Value: salesDocument }];
annotate managesalesorderSrv.SalesOrderHeader with {
  client @title: 'Client';
  salesDocument @title: 'Sales Document';
  salesDocumentType @title: 'Sales Document Type';
  salesOrganization @title: 'Sales Organization';
  distributionChannel @title: 'Distribution Channel';
  division @title: 'Division'
};

annotate managesalesorderSrv.SalesOrderHeader with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: client },
    { $Type: 'UI.DataField', Value: salesDocument },
    { $Type: 'UI.DataField', Value: salesDocumentType },
    { $Type: 'UI.DataField', Value: salesOrganization },
    { $Type: 'UI.DataField', Value: distributionChannel },
    { $Type: 'UI.DataField', Value: division }
];

annotate managesalesorderSrv.SalesOrderHeader with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: client },
    { $Type: 'UI.DataField', Value: salesDocument },
    { $Type: 'UI.DataField', Value: salesDocumentType },
    { $Type: 'UI.DataField', Value: salesOrganization },
    { $Type: 'UI.DataField', Value: distributionChannel },
    { $Type: 'UI.DataField', Value: division }
  ]
};

annotate managesalesorderSrv.SalesOrderHeader with {
  salesOrderItems @Common.Label: 'Sales Order Items'
};

annotate managesalesorderSrv.SalesOrderHeader with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' },
  { $Type : 'UI.ReferenceFacet', ID : 'SalesOrderItem', Target : 'salesOrderItems/@UI.LineItem' }
];

annotate managesalesorderSrv.SalesOrderHeader with @UI.SelectionFields: [
  salesDocument
];

annotate managesalesorderSrv.SalesOrderItem with @UI.HeaderInfo: { TypeName: 'Sales Order Item', TypeNamePlural: 'Sales Order Items', Title: { Value: salesDocumentItem } };
annotate managesalesorderSrv.SalesOrderItem with {
  ID @UI.Hidden @Common.Text: { $value: salesDocumentItem, ![@UI.TextArrangement]: #TextOnly }
};
annotate managesalesorderSrv.SalesOrderItem with @UI.Identification: [{ Value: salesDocumentItem }];
annotate managesalesorderSrv.SalesOrderItem with {
  salesOrderHeader @Common.ValueList: {
    CollectionPath: 'SalesOrderHeader',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: salesOrderHeader_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'client'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'salesDocument'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'salesDocumentType'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'salesOrganization'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'distributionChannel'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'division'
      },
    ],
  }
};
annotate managesalesorderSrv.SalesOrderItem with {
  client @title: 'Client';
  salesDocument @title: 'Sales Document';
  salesDocumentItem @title: 'Sales Document Item';
  materialNumber @title: 'Material Number';
  materialEntered @title: 'Material Entered';
  pricingReferenceMaterial @title: 'Pricing Reference Material';
  batchNumber @title: 'Batch Number';
  targetQuantity @title: 'Target Quantity in Sales Units';
  targetQuantityUoM @title: 'Target Quantity UoM'
};

annotate managesalesorderSrv.SalesOrderItem with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: client },
    { $Type: 'UI.DataField', Value: salesDocument },
    { $Type: 'UI.DataField', Value: salesDocumentItem },
    { $Type: 'UI.DataField', Value: materialNumber },
    { $Type: 'UI.DataField', Value: materialEntered },
    { $Type: 'UI.DataField', Value: pricingReferenceMaterial },
    { $Type: 'UI.DataField', Value: batchNumber },
    { $Type: 'UI.DataField', Value: targetQuantity },
    { $Type: 'UI.DataField', Value: targetQuantityUoM }
];

annotate managesalesorderSrv.SalesOrderItem with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: client },
    { $Type: 'UI.DataField', Value: salesDocument },
    { $Type: 'UI.DataField', Value: salesDocumentItem },
    { $Type: 'UI.DataField', Value: materialNumber },
    { $Type: 'UI.DataField', Value: materialEntered },
    { $Type: 'UI.DataField', Value: pricingReferenceMaterial },
    { $Type: 'UI.DataField', Value: batchNumber },
    { $Type: 'UI.DataField', Value: targetQuantity },
    { $Type: 'UI.DataField', Value: targetQuantityUoM }
  ]
};

annotate managesalesorderSrv.SalesOrderItem with {
  salesOrderHeader @Common.Text: { $value: salesOrderHeader.salesDocument, ![@UI.TextArrangement]: #TextOnly }
};

annotate managesalesorderSrv.SalesOrderItem with {
  salesOrderHeader @Common.Label: 'Sales Order Header'
};

annotate managesalesorderSrv.SalesOrderItem with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate managesalesorderSrv.SalesOrderItem with @UI.SelectionFields: [
  salesOrderHeader_ID
];

