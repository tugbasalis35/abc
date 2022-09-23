//Test animals callout
HttpResponse resp = RestCallouts.getAnimals();
system.debug(resp);

HttpResponse resp1 = RestCallouts.getUsers();
system.debug(resp1);

HttpResponse resp2 = RestCallouts.getMeal();
system.debug(resp2);

HttpResponse resp3 = RestCallouts.getProduct();
system.debug(resp3);

HttpResponse resp = RestCallouts.getBlogs();
system.debug(resp);

HttpResponse resp = RestCallouts.getUsers();
system.debug(resp);

HttpResponse resp = restCallOut2.postCallOut();
system.debug(resp);

HttpResponse resp = RestCallouts.postContacts();
system.debug(resp);




