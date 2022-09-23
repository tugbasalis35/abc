public  class DML2_Assgn {
    public static void insert_dml() {
        list<account> listAccount = new list<account>();
       account newRecord1 = new account ();
       newRecord1.Name = 'Azra' + 'Assigment';
        listAccount.add(newRecord1);

        account newRecord2 = new account ();
        newRecord2.Name = 'Vera' + 'Assigment';
        listAccount.add(newRecord2);

        account newRecord3 = new account ();
        newRecord3.Name = 'Esma' + 'Assigment';
        listAccount.add(newRecord3);

        insert listAccount;
        System.debug(listAccount);

        
    }
    public static void updating_dml(){ 
        list<account> newlistAccount = new list<account>();
  
    List<account> updateAccount = [select name from Account where name like '%Assigment%'];

    for (account eachAcc : updateAccount) {
        eachAcc.Name += ' updation';
        newlistAccount.add(eachAcc);

    }
    if(!newlistAccount.isEmpty()){
        update newlistAccount;
    }
}
}
