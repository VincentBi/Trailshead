public class AddPrimaryContact implements Queueable {
    private Contact contact;
    private String state;
    
    public AddPrimaryContact(Contact contact, String state){
		this.contact = contact;
        this.state = state;
    }
    public void execute(QueueableContext context){
        List<Contact> contacts = new List<Contact>();
        for(Account account : [select name from account where BillingState = :state]){
            Contact contactClone = contact.clone(false,false,false,false);
            //System.debug('Got contact number ' + account.Id + ' ***.');
            contactClone.AccountId = account.Id;
            contacts.add(contactClone);
        }
        
        insert contacts;
    }
}