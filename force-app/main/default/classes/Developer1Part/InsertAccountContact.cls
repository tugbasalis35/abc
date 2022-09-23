public with sharing class InsertAccountContact {
    public static void insertAccCont(string accName , string cntName) {
        account a = new account();
        a.Name = accName;
        insert a;

        contact c = new contact();
          c.LastName = cntName;
          c.AccountId = a.Id;
          insert c;
    }
}
