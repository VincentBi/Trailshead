({
	createItem : function(component, item) {
		/*var action = component.get("c.saveItem");
        action.setParams({"item": item});
        action.setCallback(this, function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
                var items = component.get("v.items");
                items.push(response.getReturnValue());
                component.set("v.items", items);
            }
        });
        $A.enqueueAction(action);*/
        console.log('Form create Item - createEvent fired.');
        var createEvent = component.getEvent('addItem');
        createEvent.setParams({"item": item});
        console.log("passing item: " + JSON.stringify(item));
        console.log("reste newItem Start: ");
        component.set('v.newItem', { 'sobjectType': 'Camping_Item__c','Name': '','Quantity__c': 0,
                                    'Price__c': 0,'Packed__c': false });
        console.log("reste newItem End: ");
        createEvent.fire();
	}
})