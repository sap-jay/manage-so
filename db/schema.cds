namespace managesalesorder;
using { cuid } from '@sap/cds/common';

entity SalesOrderHeader : cuid {
  client: String(3);
  salesDocument: String(10) @assert.unique @mandatory;
  salesDocumentType: String(4);
  salesOrganization: String(4);
  distributionChannel: String(2);
  division: String(2);
  salesOrderItems: Composition of many SalesOrderItem on salesOrderItems.salesOrderHeader = $self;
}

entity SalesOrderItem : cuid {
  client: String(3);
  salesDocument: String(10);
  salesDocumentItem: String(6) @assert.unique @mandatory;
  materialNumber: String(40);
  materialEntered: String(40);
  pricingReferenceMaterial: String(40);
  batchNumber: String(10);
  targetQuantity: Decimal(13,3);
  targetQuantityUoM: String(3);
  salesOrderHeader: Association to SalesOrderHeader;
}

