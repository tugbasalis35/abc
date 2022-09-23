@isTest
public  class Calculator2atest {
    @isTest
    private static void testMethod1() {
       String returnMsg = Calculator2.printAndReturnMessage('test test test'); 
       system.assertEquals('test test test.... OK Cool', returnMsg);
    }
    @istest
    private static void testMethodAdd1() {
        integer sum1 = Calculator2.add(15,150); 
        system.assertEquals(165, sum1);  
    }
    @istest
    private static void testMethodAdd2() {
        integer sum2 = Calculator2.add(10, 20, 30);
        system.assertEquals(60, sum2); 
    }
}
