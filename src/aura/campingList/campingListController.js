({
    doInit : function(component, event, helper) {
        var action = component.get("c.getItems");
        //action.setParams("")
        //
        action.setCallback(this, function(response){
           var state = response.getState(); 
            if(state === "SUCCESS"){
                component.set("v.items", response.getReturnValue());
            } else {
                console.log("Failed with state:" + state);
            }
        });
        
        $A.enqueueAction(action);
    },
        
    handleAddItem: function(component, event, helper) {
        var addItem = event.getParam("item");
        console.log('campingListController handleAddItem Method reached.');
        helper.addItem(component, addItem);
        
        /*var item = event.getParam("item");
        var action = component.get("c.saveItem");
        
        action.setParams({
            "item": item
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                // do something!
                var items = component.get("v.items");
                items.push(response.getReturnValue());
                component.set("v.items", items);
            }
        });
        $A.enqueueAction(action);*/
    }
})