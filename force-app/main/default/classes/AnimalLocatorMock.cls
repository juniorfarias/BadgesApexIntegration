@isTest
global with sharing class AnimalLocatorMock implements HttpCalloutMock{
    global HTTPResponse respond(HTTPRequest request){
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animal":{"id":777,"name":"dog","eats":"ração golden","says":"au au"}}');
        response.setStatusCode(200);

        return response;
    }
}