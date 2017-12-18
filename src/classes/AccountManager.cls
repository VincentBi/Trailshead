@RestResource(urlMapping='/Account/*/contacts')
global with sharing class AccountManager {

    @HttpGet
    global static Account getAccount(){
        RestRequest request = RestContext.request;
        //String accountId = request.requestURI.substring(request.requestURI.lastIndexOf('/'));
        //System.debug('getAccount Method - accountId: ' + accountId);
        String[] segments = request.requestURI.split('/');
        String idStr = segments[segments.size()-2];
        System.debug('getAccount Method - idStr: ' + idStr);
        Account result = [select Id, name, (select Id, name from contacts) from Account where Id = :idStr];
        
        return result;
    }
}