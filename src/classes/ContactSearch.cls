public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName, String postCode){
        List<Contact> contacts = new List<Contact>();
        //contacts = [SELECT ID, Name FROM Contact 
                 //WHERE LastName = :lastName AND MailingPostalCode=:postCode];
        for(Contact[] tmp : [SELECT ID, Name FROM Contact WHERE LastName = :lastName AND MailingPostalCode=:postCode]){
            contacts.addAll(tmp);
        }

        return contacts;
    }
}