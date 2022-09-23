public  class Loops_assignment {
    
    integer factorialvalue = 1;
    public integer Forloops(integer n){
        for (Integer i = 1; i <=n; i++) {
            factorialvalue = factorialvalue*i;
            
        }
        return factorialvalue;
    }
    public integer dowhile(integer n){
        factorialvalue = 1;
        while(n >= 1){
            factorialvalue =factorialvalue*n;
            n = n-1;

        }
        return factorialvalue;
    }
}
