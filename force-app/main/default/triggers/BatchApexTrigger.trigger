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
trigger BatchApexTrigger on BatchApexErrorEvent (after insert) {
    BatchApexErrorEventHelper.handleBatchErrorEvents(Trigger.new);

}