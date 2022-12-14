public with sharing class restCallOut2 {
    
    public static HttpResponse postCallout() {
        //1. Prepare HttpRequest & wrap the necessary information in it
        HttpRequest request = new HttpRequest();
        // They are expecting a name.
        /*e.g.{
            'name':'{'FirstName':'Sri'}',
            'Age':'30',
            'Role':'Saelsforce Consultant'
        }*/
        request.setMethod('POST');
        request.setEndPoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        Map<String,Object> input = new Map<String,Object>();
        input.put('name','cat');
        request.setBody(JSON.serialize(input));
        //In this example.
        //'{'name':'Cat'}'

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process the HttpResponse
        if(response.getStatusCode()==201){
            system.debug(response.getBody());
        }
        else{
            system.debug(response.getStatus());
        }
        return response;
    }

    
}
