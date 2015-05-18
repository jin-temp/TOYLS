//* In order to run these e-mail functions, you'll need to set up an account at temboo.com


//this function creates a new e-mail draft 
public void runCreateDraftChoreo() {
  // Create the Choreo object using your Temboo session
  CreateDraft createDraftChoreo = new CreateDraft(session);

  // Set inputs
  createDraftChoreo.setClientSecret("CLIENT_SECRET");
  createDraftChoreo.setRefreshToken("REFRESH_TOKEN");
  createDraftChoreo.setClientID("CLIENT_ID");
  createDraftChoreo.setMessageBody(textValue);
  createDraftChoreo.setSubject(subject);
  //createDraftChoreo.setTo(recipientName);

  // Run the Choreo and store the results
  CreateDraftResultSet createDraftResults = createDraftChoreo.run();
  //increase the n variable to keep count of how many drafts have been created this session
  n++;
  drafted = true;
  // Print results
   //println(createDraftResults.getResponse());
  // println(createDraftResults.getNewAccessToken());
  
  //parse the json results for the draft id
  draftInfo = JSONObject.parse(createDraftResults.getResponse());
   draftID = draftInfo.getString("id");
  //println(draftID);
 

}
//this function updates the existing e-mail draft
public void runUpdateDraftChoreo() {
  // Create the Choreo object using your Temboo session
  UpdateDraft updateDraftChoreo = new UpdateDraft(session);

  // Set inputs to access the e-mail draft
  updateDraftChoreo.setClientSecret("CLIENT_SECRET");
  updateDraftChoreo.setRefreshToken("REFRESH_TOKEN");
  updateDraftChoreo.setClientID("CLIENT_ID");
  //set the draftID to the draftID of the last drafted e-mail
  updateDraftChoreo.setDraftID(draftID);
  //update the e-mail contents
  //updateDraftChoreo.setTo("ba");
  updateDraftChoreo.setMessageBody(textValue);
  updateDraftChoreo.setSubject(subject);

  // Run the Choreo and store the results
  UpdateDraftResultSet updateDraftResults = updateDraftChoreo.run();
  
  // Print the results 
  //println(updateDraftResults.getResponse());
  //println(updateDraftResults.getNewAccessToken());

}
