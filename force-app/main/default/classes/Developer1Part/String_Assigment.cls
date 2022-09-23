public  class String_Assigment {
    public void Localstring (){
        string Localstring = 'Thanks for the session on the string';
        system.debug('Localstring is = ' + Localstring);

        Integer LocalstringOfstr = Localstring.length();
        system.debug('Length of a Localstring is =  ' + LocalstringOfstr);

        String LocalstringInCaps = Localstring.toUpperCase();
        system.debug('In caps = ' + LocalstringInCaps);

        Boolean containsSession = Localstring.contains('session');
        system.debug('Contain Session = ' + containsSession);

        Boolean containsSessions = Localstring.contains('sessions');
        system.debug('Contain Sessions = ' + containsSessions);

        Boolean containsSession2 = Localstring.contains('SESSION');
        system.debug('Contain SESSION = ' + containsSession2);


    }
}
