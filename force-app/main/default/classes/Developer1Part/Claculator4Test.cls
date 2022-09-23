@isTest
public with sharing class Claculator4Test {
    @isTest
    static void additionTest() {
        calculator c = new calculator();
        Decimal calculatedValue = c.dynamicCalulationMethod(15, 4, 'ADDITION');
        System.assertEquals(19, calculatedValue);
    }
    @isTest
    static void mutiplicationTest() {
        calculator c = new calculator();
        Decimal calculatedValue = c.dynamicCalulationMethod(15, 4, 'MULTIPLICATION');
        System.assertEquals(60, calculatedValue);
    }
    @isTest
    static void divisonTest() {
        calculator c = new calculator();
        Decimal calculatedValue = c.dynamicCalulationMethod(15, 5, 'DIVISION');
        System.assertEquals(3, calculatedValue);
    }
    @isTest
    static void substractionTest() {
        calculator c = new calculator();
        Decimal calculatedValue = c.dynamicCalulationMethod(15, 4, 'SUBSTRACTION');
        System.assertEquals(11, calculatedValue);
    }
    @isTest
    static void nullOperationTest() {
        calculator c = new calculator();
        Decimal calculatedValue = c.dynamicCalulationMethod(15, 4, null);
        System.assertEquals(null, calculatedValue);
    }
}