using { managesalesorder as my } from '../db/schema.cds';

@path: '/service/managesalesorder'
@requires: 'authenticated-user'
service managesalesorderSrv {
  @odata.draft.enabled
  entity SalesOrderHeader as projection on my.SalesOrderHeader;
}