@istest
public  class DmlDemo4Test {
   @istest
   private static void testInsertDml() {
    DmlDemo4.dmlInsertDemo_stndObj();
    List<account> checkAcc = [select id,name from account];
    system.assertEquals(1, checkAcc.size());
    system.assertEquals('SoftInnovas', checkAcc[0].Name);
   }
}
