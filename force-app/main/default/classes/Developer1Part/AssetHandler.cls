public  class AssetHandler {
   public static void AssetHandlerUpdate(LIST<ASSET> AsTriggerNew, LIST<ASSET> AsTriggerOld,
                                        MAP<ID,ASSET> asTriggerNewMap,MAP<ID,ASSET> asTriggerOldMap) {
            
          For(asset eachAsset : AsTriggerNew){

            if( eachAsset.Status!= 'Shipped')
          
                eachAsset.Status.addError('System will only accept Shipped');
        }      
    }
}













            
//      for (Asset eachAssset : AsTriggerNew) {
//         id assetId = eachAsset.Id;
        
//         if(asTriggerOldMap == null && eachAssset.Status = 'Shipped'){
//             eachAssset.Description = 'Asset is Shipped';
            
//         }
//         if(asTriggerOldMap != null && eachAssset.Status = 'Shipped'){
//             eachAssset.Description = 'Asset is shipped';
//         }

//      }
//    }

