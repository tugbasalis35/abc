public  class myCity {
    public string cityInformation(string x , string y ) {
           string z = x + y;
           return z;
    }
    public void stringMethod(){
        string sentence = 'I am a Salesforce Developer';
        integer num = sentence.length();
        System.debug('cumledeki harf sayisi ' + num);

        string up = sentence.toUpperCase();
        System.debug(up);

        Boolean check = sentence.contains('force');
        System.debug(check);
        
    }
    
}
