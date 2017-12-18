({
	clickCreateItem : function(component, event, helper) {
		var validItem = component.find('campingform').reduce(
            function(validSoFar, inputCmp){
                inputCmp.showHelpMessageIfInvalid();
                return validSoFar && inputCmp.get('v.validity').valid;
            }, true);
        
        if(validItem){
        	//var newItem = component.get('v.newItem');
            //var theItems = component.get('v.items');
            //theItems.push(newItem);
            //console.log("Expenses before 'create': " + JSON.stringify(theItems));
            //component.set("v.items", theItems);
            //console.log("Expenses after 'create': " + JSON.stringify(theItems));
            //component.set("v.newItem",{ 'sobjectType': 'Camping_Item__c','Name': '','Quantity__c': 0,
            //        'Price__c': 0,'Packed__c': false });
            //var newExpense = component.get("v.newExpense");
            //console.log("Create expense: " + JSON.stringify(newExpense));
            //helper.createExpense(component, newExpense);
            var newItem = component.get("v.newItem");
            console.log("Create item: " + JSON.stringify(newItem));
            helper.createItem(component, newItem);
        }
	}

})