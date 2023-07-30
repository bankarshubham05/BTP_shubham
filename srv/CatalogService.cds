
using {  shubham.db.master , shubham.db.transaction} from '../db/datamodel';


service CatalogService@(path:'/CatalogService'){

entity AddressSet as projection on master.address;
entity BussinessPartnerSet as projection on master.businesspartner;
entity ProductSet as projection on master.product;
//entity ProductTextSet as projection on master.prodtext;
    
@odata.draft.enabled:true
entity POs as projection on transaction.purchaseorder {
 
    case LIFECYCLE_STATUS
        when 'N' then 'New'
        when 'B' then 'Blocked'
        when 'D' then 'Delievered'
        end as LIFECYCLE_STATUS: String(20) ,  

    case LIFECYCLE_STATUS
        when 'N' then 2
        when 'B' then 1
        when 'D' then 3
        end as Criticality : Integer,

        * , 
    Items : redirected to POItems
}
 

 entity POItems as projection on transaction.poitems{
    *,
    PARENT_KEY : redirected to POs,
    PRODUCT_GUID : redirected to ProductSet
 }

}