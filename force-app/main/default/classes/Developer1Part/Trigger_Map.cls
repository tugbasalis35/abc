public class Trigger_Map {
    public static void InsertSF_Project(){
        Salesforce_Project__c ins = new Salesforce_Project__c();
          
           ins.Project_Name__c = 'Mac Mac';
           insert ins;
           system.debug('New record is==>  ins'); 

    }
    public static void UpdateSf_project(){
        Salesforce_Project__c ins = [select id,Name from Salesforce_Project__c where Project_Name__c = 'Mac Mac' limit 1];
        ins.Project_Name__c = 'Mac Mac Maka';
        update ins;
        system.debug( 'New Name is ==> ' + ins); 
    }
}






// 
// o
// 