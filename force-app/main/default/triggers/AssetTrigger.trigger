trigger AssetTrigger on Asset (before insert,before update ,after insert,after update) {
  if(trigger.isBefore)
  AssetHandler.AssetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}









// Create an Apex trigger for Asset object.
// oThe trigger should work on before insert and before update
// oOn both the cases it should call a handler class by passing trigger.new, 
// trigger.old,trigger.newmap,trigger.oldmap.
// Create an apex Assethandler class
// oCreate a static method Assethandlerupdate which returns nothing and 
// accepts 
// LIST<ASSET>, LIST<ASSET>,MAP<ID,ASSET>,MAP<ID,ASSET>
// oIf status of the field while inserting or updating is equal to Shipped then the 
// Description should be ‘Asset is shipped’
// oIf status of the field while inserting or updating  is equal to Installed then the 
// Description should be ‘Asset is Installed
// oBy any chance if we try to just update without modifying the status field it 
// should not change the description