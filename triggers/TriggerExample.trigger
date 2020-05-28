trigger TriggerExample on Account (before insert,before update,before delete) {
    if (trigger.isinsert){
    for(Account a: trigger.new)
    {
        a.site='Hyderabad';
    }
    }
    
if(trigger.isupdate)
{
    for(Account a: trigger.new)
    {
        a.site='Hyderabad';
       
    }
}    
 
    
    if (trigger.isdelete)
    {
        for(Account a: trigger.old)
        {
            if (a.rating=='Hot')
            {
                a.adderror('Test account cannot be deleted');
            }
        }
    }
}