trigger CreateParentTrigger on Contact (before insert) {
  
    ParentTriggerHelper.NewAcccount(trigger.new);
    
    }