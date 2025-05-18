/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-18-2025
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 * Modifications Log
 * Ver   Date         Author                               Modification
 * 1.0   05-18-2025   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
public with sharing class BatchApexErrorEventHelper {
    public static void handleBatchErrorEvents (List<BatchApexErrorEvent> events) {
            List<Error_Log__c> errorLogs = new List<Error_Log__c>();

            for(BatchApexErrorEvent event: events)
            {   
                Error_Log__c errorLog = new Error_Log__c();
                errorLog.Name = 'Batch Error';
                errorLog.Async_Apex_Job_Id__c = event.AsyncApexJobId;
                errorLog.Message__c = event.Message;
                errorLogs.add(errorLog);
            }

            if (!errorLogs.isEmpty()) {
            insert errorLogs;
        }
    }
}