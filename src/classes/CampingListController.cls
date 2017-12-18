public with sharing class CampingListController {
	
    @AuraEnabled
    public static Camping_Item__c saveItem(Camping_Item__c item){
        System.debug('Controller Item: ' + item);
        upsert item;
        return item;
    }
    
    @AuraEnabled
    public static List<Camping_Item__c> getItems(){
        return [select Id, Name, Price__c, Quantity__c, Packed__c 
               from Camping_Item__c];
    }

}