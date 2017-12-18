public class AccountProcessor {
	@future
    public Static void countContacts(List<Id> Ids){
        Set<Id> AcctIds = new Set<Id>();
        List<Account> acctsWithContacts = new List<Account>();
        List<Account> accts = new List<Account>();
        
        for(Id sId: Ids){
            AcctIds.add(sId);
        }
        
        if(AcctIds.size()>0) {
            System.debug('Got Account Ids ' + AcctIds + ' ***.');
            acctsWithContacts = [select name, 
                                 id, 
                                 (select lastname from Contacts) 
                                 from Account 
                                 where id in :AcctIds];
        	System.debug('Got Account List ' + acctsWithContacts + ' ***.');
            System.debug('Got Account List ' + acctsWithContacts.size() + ' ***.');
            for(Account acc: acctsWithContacts) {
                List<Contact> con = acc.Contacts;
                System.debug('Got contact ' + con + ' ***.');
                Integer cnt = con.size();
                System.debug('Got contact number ' + cnt + ' ***.');
                Account accnt = new Account(Name=acc.Name, Id=acc.Id, Number_of_Contacts__c=cnt);
                accts.add(accnt);
            }
            
            update accts; 
        }
    }
}