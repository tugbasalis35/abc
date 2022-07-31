public  class SetDemo2 {
    public static Set<string> capitalizeSetString(set<string>stringset) {
        set<string>capsSet = new set<string>();
        for (string eachStr : stringSet) {
            string tempstr = eachStr.toUpperCase();
            capsSet.add(tempstr);
            
        }
        return capsSet;
    }
}
