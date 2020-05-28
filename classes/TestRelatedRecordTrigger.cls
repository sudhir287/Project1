@istest

public class TestRelatedRecordTrigger {
    
    @istest static void Testrelated(){
        
       Account a=new account(name='Test Opportunity');
        insert a;
        
       Account acc= [select id,name,rating from account where id=:a.Id limit 1];
        //acc.Rating='hot';
       // update acc;
        
        Account acclist=[select id,(select id from opportunities) from account where id=:acc.Id limit 1];
        system.assertEquals(1, acclist.opportunities.size());
        
        
    }

}