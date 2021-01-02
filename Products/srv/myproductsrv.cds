using sap.com.productList from '../db/Products';

service myproducrsrv {

 entity Product as projection on productList.Products;
 

}
annotate myproducrsrv.Product with  @odata.draft.enabled;
