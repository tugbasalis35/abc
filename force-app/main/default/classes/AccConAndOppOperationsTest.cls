@istest
public class AccConAndOppOperationsTest {
   @TestSetup
   static void makeData(){
        Account acc1 =new account();
        acc1.name = 'Test 1';
        acc1.AnnualRevenue = 10000;

        Account acc2 = new account();
        acc2.name = 'Test 2';
        acc2.AnnualRevenue = 20000;

        Account acc3 = new account();
        acc3.name = 'Test 3';
        acc3.AnnualRevenue = 30000;

        List<Account> listAcc = new List<Account>{acc1, acc2, acc3};
        insert listAcc;

        List<Opportunity> listOpp = new List<Opportunity>();
        for (Integer i = 1; i <= 10; i++) {
            Opportunity op = new Opportunity();
            op.name = 'Test1 opp ' + i;
            op.Amount = 5000*i;
            op.stageName = 'Closed Won';
            op.description = 'demo';
            op.CloseDate = date.today().addDays(45);
            op.AccountId = listAcc[0].id;
            listOpp.add(op);
        }
        for (Integer i = 11; i <= 20; i++) {
            Opportunity op = new Opportunity();
            op.name = 'Test2 opp ' + i;
            op.Amount = 5000*i;
            op.stageName = 'Closed Lost';
            op.description = 'demo';
            op.CloseDate = date.today().addDays(55);
            op.AccountId = listAcc[1].id;
            listOpp.add(op);
        }
        for (Integer i = 21; i <= 30; i++) {
            Opportunity op = new Opportunity();
            op.name = 'Test3 opp ' + i;
            op.Amount = 5000*i;
            op.stageName = 'Prospecting';
            op.description = 'demo';
            op.CloseDate = date.today().addDays(65);
            op.AccountId = listAcc[2].id;
            listOpp.add(op);
        }
        insert listOpp;

        List<Contact> listCon = new List<Contact>();
        for (Integer i = 1; i <= 10; i++) {
            contact c = new contact();
            c.lastName = 'Test1 Contact ' + i;
            c.AccountId = listAcc[0].id;
            listCon.add(c);
        }
        for (Integer i = 11; i <= 20; i++) {
            contact c = new contact();
            c.lastName = 'Test2 Contact ' + i;
            c.AccountId = listAcc[1].id;
            listCon.add(c);
        }
        for (Integer i = 21; i <= 30; i++) {
            contact c = new contact();
            c.lastName = 'Test3 Contact ' + i;
            c.AccountId = listAcc[2].id;
            listCon.add(c);
        }

        insert listCon;
   }
}