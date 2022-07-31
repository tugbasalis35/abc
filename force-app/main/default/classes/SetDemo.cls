public  class SetDemo {
    public static void citySet() {
        Set<string> cities= new set <string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Turkiye');
        cities.add('Tokyo');
        cities.add('Berlin');

        System.debug('List of Cities  ' + cities);
    }
    public static set<integer>setFromList (List<integer>IntList) {
        set<integer>intSet = new Set<integer>();
         intSet.addAll(IntList);
        return intSet;
    }
}
