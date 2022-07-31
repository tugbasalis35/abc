public  class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        //create new instance
        Account acc = new Account();
            //2. set field values
        acc.Name = 'SoftInnovas';
        acc.Phone = '123654789';
        //insert
        insert acc;
        System.debug(acc);
    }

    public static void dmlInsertDemo_cstmObj() {
        Salesforce_project__c sp = new Salesforce_project__c();
        sp.project_name__c = 'Teac DML to falcons' ;
        sp.description__c = 'All 40% are great learners';
        insert sp;
        System.debug(sp); 
    }
    public static void dmlUpdateDemo_3() {
        //fetck record
        account acc = [select id,name from account where name= 'SoftInnovas' limit 1];
        //update account
        acc.Name = 'SoftInnovas Inc';
        acc.site = 'www.SoftInnovas.com';
        //update dml
        update acc;
        System.debug('acc = ' + acc);
        
    }
    public static void dmlInsertRelatedDemo_1() {
        account acc = [select id,name from account where name = 'SoftInnovas Inc' limit 1 ];
        Contact c = new contact();
        c.LastName = 'Biden';
        c.AccountId = acc.Id;
        insert c;
        
    }
    public static void dmlUpdateDemo_2_CO() {
        Salesforce_project__c sp = [select id, name from Salesforce_Project__c ORDER BY createdDate desc limit 1];
        Salesforce_ticket__c st = new Salesforce_ticket__c();

        st.Subject__c = 'Learn DML and apex';
        st.Priority__c = 'High';
        st.Status__c = 'Now';
        st.Requested_by_date__c = date.newInstance(2022, 7, 29);
        st.Salesforce_project__c = sp.id;

        insert st;
        System.debug('st = ' + st);
    }
    public static void dmlMultibleRecordInsert_right() {
        list<account> listAcc = new list<account>();
        account a = new Account();
        a.Name = 'Bulk acc 1';
        listAcc.add(a);
        
        account a1 = new Account();
        a1.Name = 'Bulk acc 2';
        listAcc.add(a1);
        
        account a2 = new Account();
        a2.Name = 'Bulk acc 3';
        listAcc.add(a2);

        insert listAcc;
        
    }
    public static void dmlMultipleRecordInsert_right2() {
        List<account> listAccount = new list<account>();
        for (Integer i = 0; i < 200; i++) {
            account acc= new account();
            acc.name = 'SoftInnovas 29JUly v' +i;
            acc.AccountNumber = 'Accis-' +i;
            acc.Active__c = 'Yes';
            listAccount.add(acc);
        }
        System.debug('size of a list = ' + listAccount.size());
        if(!listAccount.isEmpty()){
            insert listAccount;
        }
    }
}
