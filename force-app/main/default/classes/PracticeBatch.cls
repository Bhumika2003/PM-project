global class PracticeBatch implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator('select id from resource__c where id in (select resource__c  from timecard__c) and  id not in (select resource__c from assignment__c)');
    }
    global void execute(Database.BatchableContext BC, List<Account> scope) {
         for(Account a : scope)
         {a.Name = a.Name ;
         }
         update scope;
    }
      global void finish(Database.BatchableContext BC){
         list<messaging.SingleEmailMessage> maillist=new list<messaging.SingleEmailMessage>();
        emailtemplate emailtemp=[select id,subject,body from emailtemplate where developername='SalesNewCustomerEmail'];
        contact con=[select id,email from contact where lastname='RealWorld'];
        messaging.SingleEmailMessage mail=new messaging.SingleEmailMessage();
        mail.setTemplateId(emailtemp.Id);
        mail.setTargetObjectId(con.id);
        maillist.add(mail);
        if(!maillist.isEmpty())
        	messaging.sendEmail(maillist);
  }
}