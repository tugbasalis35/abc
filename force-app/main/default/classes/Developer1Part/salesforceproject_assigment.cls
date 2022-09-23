public  class salesforceproject_assigment {
    public static void salesforceprojectinsert() {
        Salesforce_Project__c sf = new Salesforce_Project__c();
        sf.Project_Name__c = 'Test Task';

        insert sf;
        System.debug('new sf===>  ' + sf);
    }

    public static void salesforceprojectupdate() {
        Salesforce_Project__c sf = [select project_Name__c
                            FROM Salesforce_Project__c 
                            WHERE project_Name__c = 'Test Task' ];

            sf.project_Name__c = 'Testing Task';
            update sf;
            System.debug('update record====>' + sf);
    }
}
