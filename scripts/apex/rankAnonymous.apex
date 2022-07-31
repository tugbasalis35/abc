RankHandler rk = new RankHandler();
String prize1 =rk.rankPrize(1);
system.debug('prize(1) is' + prize1);
String prize3 =rk.rankPrize(3);
system.debug('prize(3) is' + prize3);
String prize8 =rk.rankPrize(8);
system.debug('prize(8) is' + prize8);
String prize31 =rk.rankPrize(31);
system.debug('prize(31) is' + prize31);

RankHandler rk1 = new RankHandler();
string prize1z = rk1.rankPrizeSwitch(1);
system.debug('prize(1) is ' + prize1z);
string prize3z = rk1.rankPrizeSwitch(3);
system.debug('prize(3) is ' + prize3z);

string prize8z = rk1.rankPrizeSwitch(8);
system.debug('prize(8) is ' + prize8z);

string prize31z = rk1.rankPrizeSwitch(31);
system.debug('prize(31) is ' + prize31z);