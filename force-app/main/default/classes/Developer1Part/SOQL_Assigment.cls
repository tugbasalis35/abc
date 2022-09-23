public  class SOQL_Assigment {
    public static void method1() {
        
    list<AggregateResult> newlist = [SELECT AVG(NumberOfEmployees) FROM Account ];
    System.debug('The value of aver' + newlist);
}
}

