public  class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;

    public void printCandidate(){
        System.debug('===========START=============');
        System.debug('Name is ' + name +',('+gender+' )');
        System.debug('Compnay name = ' + CompanyName);
        System.debug('=============END========');
    }
    public static void printCandidateInfo() {
        System.debug('Company name is ' + CompanyName);
    }
}
