//farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın..

Map<string, List<Decimal>>cityOfHots = new map<string, List<Decimal>>();

List<Decimal>IstanbulOfHot = new list<decimal>{21.5,21.3,17.4,15.5,8.7,23.3,22.2};
cityOfHots.put('Istanbul', istanbulOfHot);

List<Decimal>nyOfHot = new list<decimal>{8.5,9.3,3.4,9.5,8.7,10.3,12.2};
cityOfHots.put('New York', nyOfHot);

List<Decimal>TorontoOfHot = new list<decimal>{-8.5,9.3,-3.4,9.5,8.7,-10.3,12.2};
cityOfHots.put('Toronto', TorontoOfHot);

List<Decimal>LondonOfHot = new list<decimal>{20.5,9.3,15.4,9.5,8.7,-5.3,12.2};
cityOfHots.put('London', LondonOfHot);


system.debug(cityOfHots);

turkishLesson4.termometre(cityOfHots);