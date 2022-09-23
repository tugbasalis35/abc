public with sharing class AllCountries {
   public static HttoResponse getCountry(){

    //1.Prepare Httprequeest & wrap the necessary information in it
    HttpRequest request = new HttpRequest();
       request.setEndpoint('https://restcountries.com/v2/all');
       request.setMethod('GET'); 

       //2. Prepare internate
       Http http = new Http();

       //3. Send the HttpRequest over the internet to receive HttpResponse back
       HttpResponse response = http.send(request);

        //4. Process the HttpResponse
        if(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            system.debug(jsonString);

            List<wrapperCountry> countryWrappers = (List<wrapperCountry>)JSON.deserialize(jsonString, List<wrapperCountry>.class);
            List<COUNTRY_INFO__c> countries = new List<COUNTRY_INFO__c>();

            for(wrapperCountry cw :countryWrappers){
                COUNTRY_INFO__c count = new COUNTRY_INFO__c();
                count.name = cw.name;
                count.Capital__c = cw.capital;
                count.Region__c = cw.region;
                count.Native_Name__c = cw.nativeName;
                //stringi number a donustur
                count.Population__c = Integer.valueOf(cw.population);
                count.add(blog);
            }
            try{
                if(!blogs.isEmpty()){
                    insert blogs;
                }
            }catch(Exception ex){
                    CommonUtility.createLog('RestCallouts - getblogs', 'Integration Apex',ex.getStackTraceString() , ' Exception',ex.getTypeName(), ex.getMessage(),'');
                }

         }
         return response;


   }
   Public class wrapperCountry{
     public string name;
     public string capital;
     public string region;
     public string nativeName;
     public string population;
     public flagsWrapper flags;
   }
   public class flagsWrapper{
    public string svg;
   }
}
