global class ResourceProjects implements Database.Batchable <sObject>,Database.Stateful {
    global map<ID,resource__c> s = new map<ID,resource__C>();
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator('select id,name from resource__c where id in (select resource__c  from timecard__c) and  id not in (select resource__c from assignment__c)');
    }
    global void execute(Database.BatchableContext BC, List<resource__c> record) {
        s.putall(record);
        system.debug(s);
    }
      global void finish(Database.BatchableContext BC){
        list<messaging.SingleEmailMessage> maillist=new list<messaging.SingleEmailMessage>();
        String[] toAddresses =new String[]{'gawandebhumi@gmail.com'};
        messaging.SingleEmailMessage mail=new messaging.SingleEmailMessage();
        mail.setSubject('Assignment missing list in resource');
         list<resource__c> ls = new list<resource__c>();
          
         string text = '<html><body>'+
            '<table border="3">'+ 
            '<tr><th>Resource ID</th><th>Resource Name</th></tr>'+
            '<tr><td>'+ s +'</td>' + s + '<td></td></tr>'+
            '</table>'+
            '</body></html>';
          for (resource__c resrc : s.values()){
              text = resrc.Id ;
              text = resrc.Name;
              ls.add(resrc);
              
          }
       
        mail.setHtmlBody(text);
        mail.setplaintextbody('welcome to techcoopers family'+text);
        system.debug(s+'resoutrlfJGO');
        mail.setToAddresses(toAddresses);
        maillist.add(mail);
        if(!maillist.isEmpty())
        messaging.sendEmail(maillist);
    }

    
  }