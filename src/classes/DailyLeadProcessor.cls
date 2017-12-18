global class DailyLeadProcessor implements Schedulable {
    global void execute(SchedulableContext ctx){
        List<Lead> leads = [select Id from Lead where LeadSource ='' limit 200];
        List<Lead> leadsToUpdate = new List<Lead>();
        for( Lead lead : leads){
            lead.LeadSource = 'Dreamforce';
            leadsToUpdate.add(lead);
        }
        
        update(leadsToUpdate);
    }
}