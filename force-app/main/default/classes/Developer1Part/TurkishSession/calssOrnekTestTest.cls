@isTest
public  class calssOrnekTestTest {
    @isTest
    private static void numberTypeTest() {
        integer sonuc1 = classOrnekTest.numberType(3);
        integer sonuc2 = classOrnekTest.numberType(-25);
        integer sonuc3 = classOrnekTest.numberType(0);
        System.assertEquals(53, sonuc1);
        System.assertEquals(75, sonuc2);
        System.assertEquals(75, sonuc3);
    }
}
