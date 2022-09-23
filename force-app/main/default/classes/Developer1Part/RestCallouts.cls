public with sharing class RestCallouts {
    
    public static HttpResponse getAnimals(){
        //1.Prepare Httprequeest & wrap the necessary information in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        //2. Prepare internate
        Http http = new Http();

        //3. Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process the HttpResponse
        if(response.getStatusCode()==200){
            system.debug(response.getBody());
        }
        return response;
    }
    // public static HttpResponse getUsers(){
    //     //1.Prepare Httprequeest & wrap the necessary information in it
    //     HttpRequest request = new HttpRequest();
    //     request.setEndpoint('https://gorest.co.in/public/v2/users');
    //     request.setMethod('GET');

    //     //2. Prepare internate
    //     Http http = new Http();

    //     //3. Send the HttpRequest over the internet to receive HttpResponse back
    //     HttpResponse response = http.send(request);

    //     //4. Process the HttpResponse
    //     if(response.getStatusCode()==200){
    //         system.debug(response.getBody());
    //     }else{
    //         CommonUtility.createLog('RestCallouts - getUsers', 'Integration Apex', '', 'Error', 'Callout Exception', response.getStatus(), response.getBody());
    //     }
    //     return response;
    // }
        
    public static HttpResponse getMeal(){
        //1.Prepare Httprequeest & wrap the necessary information in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.spoonacular.com/recipes/random?apiKey=97eee00b378e46aaa190c48c87ee834e');
    
        request.setMethod('GET');

        //2. Prepare internate
        Http http = new Http();

        //3. Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process the HttpResponse
        if(response.getStatusCode()==200){
            system.debug(response.getBody());
        }else{
            CommonUtility.createLog('RestCallouts - getMeal', 'Integration Apex', '', 'Error', 'Callout Exception', response.getStatus(), response.getBody());
        }
        return response;

    }
    //https://mockyard.herokuapp.com/products/1
    public static HttpResponse getProduct(){

        //1.Prepare Httprequeest & wrap the necessary information in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://mockyard.herokuapp.com/products/1');
        request.setMethod('GET');

        //2. Prepare internate
        Http http = new Http();

        //3. Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process the HttpResponse
        if(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            system.debug(jsonString);
            //convert the json string into our sistem
            List<ProductWrapper> productWrappers =(List<ProductWrapper>)JSON.deserialize(jsonString,List<ProductWrapper>.class);
            List<Product__c> products = new List<Product__c>();
            for(ProductWrapper pw :productWrappers){
                Product__c prod = new Product__c();
                prod.Name = pw.productId;
                prod.Category__c = pw.category;
                prod.Description__c = pw.description;
                String pr = pw.price.subString(1);
                prod.Price__c = Decimal.valueOf(pr);
                prod.Image__c = pw.image;
                prod.Product_Name__c = pw.name; 
                products.add(prod);

            }
            try{
                if(!products.isEmpty()){
                    insert products;
                }
            
                }catch(Exception ex){
                    CommonUtility.createLog('RestCallouts - getProduct', 'Integration Apex',ex.getStackTraceString() , ' Exception',ex.getTypeName(), ex.getMessage(),'');
                }

        }
        return response;

    }
    
    public static HttpResponse getBlogs(){
        //1.Prepare Httprequeest & wrap the necessary information in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://mockyard.herokuapp.com/blogs/2');
        request.setMethod('GET');

         //2. Prepare internate
         Http http = new Http();

         //3. Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);

         //4. Process the HttpResponse
         if(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            system.debug(jsonString);

            List<BlogWrapper> blogWrappers = (List<BlogWrapper>)JSON.deserialize(jsonString, List<BlogWrapper>.class);
            List<Blog__c> blogs = new List<Blog__c>();
            for(BlogWrapper bw :blogWrappers){
                Blog__c blog = new Blog__c();
                blog.Topic__c = bw.topic;
                blog.Author__c = bw.author;
                blog.Body__c = bw.body;
                blog.Title__c = bw.title;
                blogs.add(blog);
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
    public static HttpResponse getUsers(){

       //1.Prepare Httprequeest & wrap the necessary information in it
       HttpRequest request = new HttpRequest();
       request.setEndpoint('https://mockyard.herokuapp.com/users/10');
       request.setMethod('GET'); 

       //2. Prepare internate
       Http http = new Http();

       //3. Send the HttpRequest over the internet to receive HttpResponse back
       HttpResponse response = http.send(request);

        //4. Process the HttpResponse
        if(response.getStatusCode() == 200){
            String JsonString = response.getBody();
            system.debug(JsonString);

            List<UserWrapper> userWrappers = (List<UserWrapper>)JSON.deserialize(jsonString, List<UserWrapper>.class);
            List<User__c> users = new List<User__c>();
            for(UserWrapper uw :userWrappers){
                User__c use = new User__c();
                use.Name__c = uw.name;
                use.Email__c = uw.email;
                use.Gender__c = uw.gender;
                use.Image__c = uw.image;
                use.Phone__c = uw.phone;
                use.Country__c = uw.country;
                use.City__c = uw.city;
                use.Age__c = uw.age;
                users.add(use);
            }
            try{
                if(!users.isEmpty()){
                    insert users;
                }
            }catch(Exception ex){
                CommonUtility.createLog('RestCallouts - getUsers', 'Integration Apex',ex.getStackTraceString() , ' Exception',ex.getTypeName(), ex.getMessage(),'');
                }
            
           

        }
        return response;
    }
    public static HttpResponse postContacts() {
        //1. Prepare HttpRequest & wrap the necessary information in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://gorest.co.in/public/v2/users');
        request.setMethod('POST');

        //1.1 Get data and prepare it as JSON
        List<Contact> contacts = [SELECT Name, Email, Gender__c, Status__c 
                                    FROM Contact
                                    WHERE Gender__c != null
                                    AND Status__c != null
                                    LIMIT 1];
        ContactWrapper cw = new ContactWrapper();
        for(Contact con : contacts) {            
            cw.name = con.Name;
            cw.email = con.Email;
            cw.gender = con.Gender__c;
            cw.status = con.Status__c;
        }
        request.setBody(JSON.serialize(cw));
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setHeader('Authorization', 'Bearer 6932733bb736fc4c970992ee5fcc6e7ff3b766156e1afe13babae533cde6e5ea');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);
        System.debug(response.getBody());
        //4. Process the HttpResponse
        if(response.getStatusCode() == 201) {
            System.debug('Request has been processed successfully');
        }
        return response;
    }
    }

