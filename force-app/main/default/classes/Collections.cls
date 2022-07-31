public  class Collections {
    public static string listassignment(integer i) {
        List<string> LstMonth = new List<String>();
        string output_month = '';
        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');

        
        if(i<1 || i>12){
            output_month = 'Not a valid month';
    }else{
        output_month = LstMonth[i-1];
    }
        return output_month;
    }
}
