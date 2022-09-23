public with sharing class Claculator4 {
    public decimal dynamicCalulationMethod(decimal a, decimal b, String opType){
        switch on opType {
            when 'ADDITION' {		
                return a+b;
            }	
            when 'SUBSTRACTION' {		
                return a-b;
            }
            when 'DIVISION' {
                return a/b;
            }
            when 'MULTIPLICATION' {
                return a*b;
            }
            when else{
                return null;
            }
        }
    }
}