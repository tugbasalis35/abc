@isTest
public  class DmlDemoTest {
    @isTest
    private static void testInsertRelatedTest() {
       Account acc = new account();
       Acc.Name = 'SoftInnovas Inc';
       insert acc;
       
       DmlDemo.dmlInsertRelatedDemo_1();

       list<contact> contacts = [select id,accountId,name from contact];
       system.assertEquals(1, contacts.size());
       system.assertEquals(acc.id, contacts[0].AccountId);
    }
}
