public class ListDemo {
    public static string candidatesList(integer i) {
        List<String> listCandidate = new List<String>();
        listCandidate.add('zehra');
        listCandidate.add('tugba');
        listCandidate.add('huseyin');
        listCandidate.add('vera');
        System.debug('Candidates are ' + listCandidate);
        integer sizeOfList = listCandidate.size();
        string returnString = '';
        if(i < sizeOfList){
            returnString = listCandidate[i];
        }else{
            returnString = 'No Values Found.Stay in limits.';
        }
        return returnString;
        //string returnString = listCandidate[i];
        //return returnString;
    }
    public static void randomIntegerList(){
        List<Integer> listInteger = new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        System.debug('These are some random integers ' + listInteger );

        integer index3Value = listInteger.get(3);
        integer index3Value_2 = listInteger[3];

        System.debug('value at index ' +index3Value );
        System.debug('value at index ' +index3Value_2 );

     
        
    }
    public static void allCats(){

        //create new list of cat
        List<cat>cats = new list<cat>();
        //how do we add elements
        //we will create new instances of cat class
        //and then add those instance in the 
        cat falconsCat = new Cat('fluffykins','white');
        cat  tugbasCat = new Cat('yang','black');
        
        cats.add(falconsCat);
        cats.add(tugbasCat);
        
        System.debug('All cats = ' + cats);
        if(!cats.isEmpty()){
            cat catAt1 = cats[1];
            System.debug('cat at 1 is ' + catAt1);
        }
    }
}
