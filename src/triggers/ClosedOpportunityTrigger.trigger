trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> tasks = new List<Task>();
    
    for(Opportunity opp : [select Id,Name from Opportunity 
                           where Id in :Trigger.New and StageName ='Closed Won' ]){
        tasks.add(New Task(Subject = 'Follow Up Test Task',
                           WhatId = opp.Id));
    }
    
    if(tasks.size()>0){
        insert tasks;
    }
}