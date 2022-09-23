Map<string,Country_code__c> mcs = Country_code__c.getAll();

set<string> countries = mcs.keyset();
for(string eachCountry :countries){
   Country_code__c cs = mcs.get(eachCountry);
   string countryCode = cs.Country_code__c;
   system.debug('Country is '  +eachCountry +', its code is ' + countryCode ); 
}
system.debug('Country Codes Are ' + mcs);