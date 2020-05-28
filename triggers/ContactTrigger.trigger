trigger ContactTrigger on Account (after insert) {

ContactTriggerHandler.NewContact(trigger.new);

}