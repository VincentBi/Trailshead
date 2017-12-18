@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    
    global HTTPResponse respond(HTTPRequest request){
        HttpResponse response = new HttpResponse();
        response.setBody('{"animal": {"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}');
        response.setStatusCode(200);
        return response;
    }
	//StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
    //mock.setStaticResource('GetAnimalbyIdResource');
    //mock.setStatusCode(200);
}