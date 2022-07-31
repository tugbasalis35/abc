//map (collection)
//key datatype,
            //value datatype VARIABLE name        new instance of same type of map
map<string,string>            mapCntCurrency = new map<string,string>();


mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkiye', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');

system.debug('India currency = '+ mapCntCurrency.get ('India'));
system.debug('Turkiye currency = '+ mapCntCurrency.get ('Turkiye'));


//system.debug(mapCntCurrency);
//fetch all country
set<string>countrySet = mapCntCurrency.keySet();
system.debug('All country/s maps are ' + mapCntCurrency.keySet());
list<string>currencies = mapCntCurrency.values();
system.debug('All currencies maps are ' + mapCntCurrency.values());



set<string>countries = mapCntCurrency.keySet();
for(string eachKey : countries){
    String printString ='Country is ' + eachKey;
    //system.debug(printString);

    //fech value (currency) for key country
    string eachValue = mapCntCurrency.get(eachKey);
    printString = printString + ', its currency is ' + eachValue;
    system.debug(printString);
}




