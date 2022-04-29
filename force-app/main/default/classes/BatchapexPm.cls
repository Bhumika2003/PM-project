Global class BatchapexPm implements Database.Batchable<sObject>, Database.Stateful {
    global List<resource__c> missingIDs = new List<resource__c>();
    Global Database.queryLocator start (Database.BatchableContext bc) {
        return Database.getQueryLocator('select id,name from resource__c where id in (select resource__c  from timecard__c) and  id not in (select resource__c from assignment__c)');
    }
    Global void execute(Database.BatchableContext bc, List<resource__c> resourceList) {
        missingIDs.addAll(resourceList);
        system.debug(missingIDs);
        //batchClassForPMApp b = new batchClassForPMApp();
		//database.executeBatch(b);
   }
    Global void finish (Database.BatchableContext bc){
        map<string, string> mapOfResources = new map<string, string>();
        for(resource__c missingID : missingIDs){
            //add data in map
            mapOfResources.put(string.valueOf(missingID.id), missingID.Name);
        }
        list<messaging.SingleEmailMessage> maillist=new list<messaging.SingleEmailMessage>();
        String[] toAddresses = new String[]{'bhumika.g@selectiva.com'};
        messaging.SingleEmailMessage mail=new messaging.SingleEmailMessage();
        mail.setSubject('Assignment Missing List in Resources object');
        String body = '<html><body>'+
            '<table border = "3">'+
            '<tr><th>Resource ID</th> <th>Resource Name</th></tr>';
            for(String resourceID : mapOfResources.keySet()){
               body = body +' <tr> <td>' + resourceID + '</td> <td>'+ mapOfResources.get(resourceID) + '</td> </tr>';
            }
        	body = body + '</table>'+
            ' </body>'+
            ' </html>';
        mail.setHtmlBody(body);
        mail.setplaintextbody('Timecard missing list :' + missingIDs);
        mail.setToAddresses(toAddresses);
        maillist.add(mail);
        if(!maillist.isEmpty()){
            System.debug(maillist);
          messaging.sendEmail(maillist);
        }
    }
}