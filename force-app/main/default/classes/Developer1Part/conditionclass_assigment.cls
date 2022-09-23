public  class conditionclass_assigment {
    public string ifClassmethod(integer month){
        string output_month = 'Not a valid Month';
        if(month==1){
            output_month='January'; 
        }else if(month==2){
            output_month ='February';
        }else{
            output_month ='Not a valid month';
        }
       
    return output_month;
    }

    public string caseMethod(string month_name){
        string output_Quarter = 'Enter a proper Month name';
        if((month_name == 'January') || (month_name == 'Februaury') || (month_name == 'March')){
            output_Quarter = 'Quarter 1';
        }else{
            output_Quarter = 'Not a valid Quarter';
        }
    
     return output_Quarter;
    }
}


