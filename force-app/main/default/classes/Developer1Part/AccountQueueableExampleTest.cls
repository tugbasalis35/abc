@isTest
public class AccountQueueableExampleTest {
    @isTest
    public static void testQueueable() {
       List<Account> listAcc = new  List<Account>();
       for (Integer i = 0; i < 500; i++) {
        account a3 = new account();
        a3.Name = 'PI Test';
        a3.Industry = 'Banking';
        a3.Type = 'Customer - Direct';
        listAcc.add(a3);
       }
       insert listAcc;
       AccountQueueableExample aq = new AccountQueueableExample(listAcc);

       test.startTest();
       ID jobId = system.enqueueJob(aq);
       test.stopTest();

       List<Account> accounts = [select name from account where name like '%SI%'];
       system.assertEquals(500, accounts.size());
    }
}
