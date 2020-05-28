public class ParentTriggerHelper{

    /*this is a new trigger */
public static void NewAcccount(list<contact> conlist){

list<contact> clist= new list<contact>();
list<account> acclist=new list<account>();

for(contact c: conlist)
{
 if (c.accountid==null)
{
clist.add(c);
}
system.debug(clist);    
}
map<string,contact>conmap =new map<string,contact>();

for(contact c1: clist)
{

string accountname=c1.lastname+' '+c1.firstname;
conmap.put(accountname,c1);
account a= new account(name=accountname);
acclist.add(a);
}
insert acclist;
system.debug(conmap);
system.debug(acclist);
for (account a: acclist)
{
if (conmap.containskey(a.name))

{
conmap.get(a.name).accountid=a.id;

}

}

}
}