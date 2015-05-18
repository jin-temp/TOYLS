/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.
 
 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
 // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

//when the droplist on the home screen is clicked, store the index number of the selected item so we know which draft to show
public void dropList1_click1(GDropList source, GEvent event) { //_CODE_:dropList1:531326:
  println("dropList1 - GDropList event occured " + System.currentTimeMillis()%10000000 );
  draftNum = dropList1.getSelectedIndex();
} //_CODE_:dropList1:531326:

//when text is entered into the sender field, store the text
public void sender_change1(GTextField source, GEvent event) { //_CODE_:sender:909163:
  println("sender - GTextField event occured " + System.currentTimeMillis()%10000000 );
  senderName = sender.getText();
} //_CODE_:sender:909163:
//when text is entered into the recipient field, store the text
public void recipient_change1(GTextField source, GEvent event) { //_CODE_:recipient:233571:
  println("recipient - GTextField event occured " + System.currentTimeMillis()%10000000 );
  recipientName = recipient.getText();
} //_CODE_:recipient:233571:

//when the Play! button is pressed, show a window based on which droplist item is selected
public void playbutton_click1(GButton source, GEvent event) { //_CODE_:playbutton:745673:
  println("playbutton - GButton event occured " + System.currentTimeMillis()%10000000 );
  if (draftNum == 0) regretWindow();
  if (draftNum == 1) inquiryWindow();
  if (draftNum == 2) outOfOfficeWindow();
  if (draftNum == 3) redirectWindow();
  if (draftNum == 4) spinWindow();
  if (draftNum == 5) checkinWindow();
  if (draftNum == 6) meetingWindow();
} //_CODE_:playbutton:745673:

//when called, this displays the "I regret to inform you" e-mail template window
synchronized public void regretwin_draw1(GWinApplet appc, GWinData data) { //_CODE_:regretWin:508401:
  appc.background(paper);
  appc.fill(0);
  if (showRegretDraft) appc.text(textValue, 100, 400, 300, 250);
} //_CODE_:regretWin:508401:

//when the text is entered in blank 1, store the text
public void textfield1_change1(GTextField source, GEvent event) { //_CODE_:textfield1:326261:
  println("textfield1 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank1 = textfield1.getText();
} //_CODE_:textfield1:326261:

//when the text is entered in blank 2, store the text
public void textfield2_change1(GTextField source, GEvent event) { //_CODE_:textfield2:702785:
  println("textfield2 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank2 = textfield2.getText();
} //_CODE_:textfield2:702785:

//when the text is entered in blank 3, store the text
public void textfield3_change1(GTextField source, GEvent event) { //_CODE_:textfield3:871626:
  println("textfield3 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank3 = textfield3.getText();
} //_CODE_:textfield3:871626:

//when the text is entered in blank 4, store the text
public void textfield4_change1(GTextField source, GEvent event) { //_CODE_:textfield4:819514:
  println("textfield4 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank4 = textfield4.getText();
} //_CODE_:textfield4:819514:

//if the show draft checkbox is clicked, add the text from the blanks to the template and display the e-mail draft
public void showDraft_clicked1(GCheckbox source, GEvent event) { //_CODE_:showDraft:839001:
  println("showDraft - GCheckbox event occured " + System.currentTimeMillis()%10000000 );
  //set the e-mail template text
  textValue = "Hi "+recipientName+",\nUnfortunately, "+blank1+". As such "+blank2+".\nI appreciate your "+blank3+". Please let me know if there's anything else I can do to help you.\nHave a "+blank4+" day,\n \n"+senderName;
  if (showDraft.isSelected()) showRegretDraft = true;
  else showRegretDraft = false;
} //_CODE_:showDraft:839001:

//if the Draft it! (or Update it!) button is clicked
public void draftbutton_click1(GButton source, GEvent event) { //_CODE_:draftbutton:902279:
  println("draftbutton - GButton event occured " + System.currentTimeMillis()%10000000 );
  //set the e-mail template text
  textValue = "Hi "+recipientName+",\nUnfortunately, "+blank1+". As such "+blank2+".\nI appreciate your "+blank3+". Please let me know if there's anything else I can do to help you.\nHave a "+blank4+" day,\n \n"+senderName;
  //show the drafted text on the screen
  showRegretDraft = true;
  //if an e-mail has already been drafted, run the update function
  if(drafted){
  runUpdateDraftChoreo();
  }
  //if no e-mail has been drafted, draft an e-mail and change the button text to "Update it!"
  else {
  runCreateDraftChoreo();
  draftbutton.setText("Update it!");
  }
} //_CODE_:draftbutton:902279:

//when called, this displays the "Thank you for your inquiry" e-mail template window
synchronized public void inquirywin_draw1(GWinApplet appc, GWinData data) { //_CODE_:inquiryWin:351748:
  appc.background(paper);
  appc.fill(0);
  if (showInquiryDraft) appc.text(textValue, 100, 400, 300, 250);
} //_CODE_:inquiryWin:351748:

//when the text is entered in blank 5, store the text
public void textfield8_change1(GTextField source, GEvent event) { //_CODE_:textfield8:206397:
  println("textfield8 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank5 = textfield8.getText();
} //_CODE_:textfield8:206397:

//when the text is entered in blank 6, store the text
public void textfield5_change1(GTextField source, GEvent event) { //_CODE_:textfield5:640337:
  println("textfield5 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank6 = textfield5.getText();
} //_CODE_:textfield5:640337:

//when the text is entered in blank 7, store the text
public void textfield6_change1(GTextField source, GEvent event) { //_CODE_:textfield6:717189:
  println("textfield6 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank7 = textfield6.getText();
} //_CODE_:textfield6:717189:

//when the text is entered in blank 8, store the text
public void textfield7_change1(GTextField source, GEvent event) { //_CODE_:textfield7:975659:
  println("textfield7 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank8 = textfield7.getText();
} //_CODE_:textfield7:975659:

//if the show draft checkbox is clicked, add the text from the blanks to the template and display the e-mail draft
public void showDraft2_clicked1(GCheckbox source, GEvent event) { //_CODE_:showDraft2:741527:
  println("showDraft2 - GCheckbox event occured " + System.currentTimeMillis()%10000000 );
  textValue = "Good "+blank5+" "+recipientName+",\nThanks for reaching out about "+blank6+". Please refer to "+blank7+" for more information.\nLet me know if you run into any problems and I'd be happy to "+blank8+".\nSincerely,\n"+senderName;
  if (showDraft2.isSelected()) showInquiryDraft = true;
  else showInquiryDraft = false;
} //_CODE_:showDraft2:741527:

//if the Draft it! (or Update it!) button is clicked
public void draft2button_click1(GButton source, GEvent event) { //_CODE_:draft2button:297824:
  println("draft2button - GButton event occured " + System.currentTimeMillis()%10000000 );
  //set the e-mail template text
  textValue = "Good "+blank5+" "+recipientName+",\nThanks for reaching out about "+blank6+". Please refer to"+blank7+" for moe information.\nLet me know if you run into any problems and I'd be happy to"+blank8+".\nSincerely,\n"+senderName;
  showInquiryDraft = true;
  //if an e-mail has already been drafted, run the update function
  if(drafted){
  runUpdateDraftChoreo();
  }
  //if no e-mail has been drafted, draft an e-mail and change the button text to "Update it!"
  else {
  runCreateDraftChoreo();
  draft2button.setText("Update it!");
  }
} //_CODE_:draft2button:297824:

//when called, this displays the "Out of Office" e-mail template window
synchronized public void outwin_draw1(GWinApplet appc, GWinData data) { //_CODE_:outofofficeWin:331325:
  appc.background(paper);
  appc.fill(0);
  if (showOutOfOfficeDraft) appc.text(textValue, 100, 400, 300, 250);
} //_CODE_:outofofficeWin:331325:

//when the text is entered in blank 9, store the text
public void textfield9_change1(GTextField source, GEvent event) { //_CODE_:textfield9:283033:
  println("textfield1 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank9 = textfield9.getText();
} //_CODE_:textfield9:283033:

//when the text is entered in blank 10, store the text
public void textfield11_change1(GTextField source, GEvent event) { //_CODE_:textfield11:923763:
  println("textfield1 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank10 = textfield11.getText();
} //_CODE_:textfield11:923763:

//when the text is entered in blank 11, store the text
public void textfield10_change1(GTextField source, GEvent event) { //_CODE_:textfield10:845769:
  println("textfield10 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank11 = textfield10.getText();
} //_CODE_:textfield10:845769:

//if the show draft checkbox is clicked, add the text from the blanks to the template and display the e-mail draft
public void showDraft3_clicked1(GCheckbox source, GEvent event) { //_CODE_:showDraft3:770065:
  println("showDraft3 - GCheckbox event occured " + System.currentTimeMillis()%10000000 );
  textValue = "Hi "+recipientName+",\n\nI will be out of the office until "+blank9+". I apologize if this causes an inconvenience.\nPlease don't hesitate to contact "+blank10+" if you have any urgent concerns. Otherwise I'll get back to you when I return.\nKind Regards,\n\n"+senderName;
  if (showDraft3.isSelected()) showOutOfOfficeDraft = true;
  else showOutOfOfficeDraft = false;
} //_CODE_:showDraft3:770065:

//if the Draft it! (or Update it!) button is clicked
public void draft3button_click1(GButton source, GEvent event) { //_CODE_:draft3button:364013:
  println("draft3button - GButton event occured " + System.currentTimeMillis()%10000000 );
  //set the e-mail template text
  textValue = "Hi "+recipientName+",\n\nI will be out of the office until "+blank9+". I apologize if this causes an inconvenience.\nPlease don't hesitate to contact "+blank10+" if you have any urgent concerns. Otherwise I'll get back to you when I return.\nKind Regards,\n\n"+senderName;
  showOutOfOfficeDraft = true;
  if(drafted){
  runUpdateDraftChoreo();
  }
  //if no e-mail has been drafted, draft an e-mail and change the button text to "Update it!"
  else {
  runCreateDraftChoreo();
  draft3button.setText("Update it!");
  }
  
} //_CODE_:draft3button:364013:

//when called, this displays the "Let me introduce you to my colleague..." e-mail template window
synchronized public void redirectwin_draw1(GWinApplet appc, GWinData data) { //_CODE_:redirectWin:452837:
  appc.background(paper);
  appc.fill(0);
  if (showRedirectDraft) appc.text(textValue, 100, 400, 300, 250);
} //_CODE_:redirectWin:452837:

//when the text is entered in blank 12, store the text
public void textfield12_change1(GTextField source, GEvent event) { //_CODE_:textfield12:541483:
  println("textfield12 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank12 = textfield12.getText();
} //_CODE_:textfield12:541483:

//when the text is entered in blank 13, store the text
public void textfield13_change1(GTextField source, GEvent event) { //_CODE_:textfield13:898438:
  println("textfield13 - GTextField event occured " + System.currentTimeMillis()%10000000 );
   blank13 = textfield13.getText();
} //_CODE_:textfield13:898438:

//when the text is entered in blank 14, store the text
public void textfield14_change1(GTextField source, GEvent event) { //_CODE_:textfield14:744630:
  println("textfield14 - GTextField event occured " + System.currentTimeMillis()%10000000 );
   blank14 = textfield14.getText();
} //_CODE_:textfield14:744630:

//if the show draft checkbox is clicked, add the text from the blanks to the template and display the e-mail draft
public void showDraft4_clicked1(GCheckbox source, GEvent event) { //_CODE_:showDraft4:707339:
  println("showDraft4 - GCheckbox event occured " + System.currentTimeMillis()%10000000 );
  textValue = "Hi "+recipientName+",\n\nThanks for your question about "+blank12+". I'm going to go ahead and forward your question on to "+blank13+", my colleauge who "+blank14+".\nHave a good day!\n\n"+senderName;
  if (showDraft4.isSelected()) showRedirectDraft = true;
  else showRedirectDraft = false;
} //_CODE_:showDraft4:707339:

//if the Draft it! (or Update it!) button is clicked
public void draft4button_click1(GButton source, GEvent event) { //_CODE_:draft4button:946582:
  println("draft4button - GButton event occured " + System.currentTimeMillis()%10000000 );
  //set the e-mail template text
  textValue = "Hi "+recipientName+",\n\nThanks for your question about "+blank12+". I'm going to go ahead and forward your question on to "+blank13+", my colleauge who "+blank14+".\nHave a good day!\n\n"+senderName;
  showRedirectDraft = true;
  //if an e-mail has already been drafted, run the update function
  if(drafted){
  runUpdateDraftChoreo();
  }
  //if no e-mail has been drafted, draft an e-mail and change the button text to "Update it!"
  else {
  runCreateDraftChoreo();
  draft4button.setText("Update it!");
  }

} //_CODE_:draft4button:946582:

//when called, this displays the "Postive Spin on Bad News" e-mail template window
synchronized public void spinwin_draw1(GWinApplet appc, GWinData data) { //_CODE_:spinWin:647360:
  appc.background(paper);
  appc.fill(0);
  if (showSpinDraft) appc.text(textValue, 100, 400, 300, 250);
} //_CODE_:spinWin:647360:

//when the text is entered in blank 15, store the text
public void textfield16_change1(GTextField source, GEvent event) { //_CODE_:textfield16:276256:
  println("textfield16 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank15 = textfield16.getText();
} //_CODE_:textfield16:276256:

//when the text is entered in blank 16, store the text
public void textfield15_change1(GTextField source, GEvent event) { //_CODE_:textfield15:218116:
  println("textfield15 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank16 = textfield15.getText();
} //_CODE_:textfield15:218116:

//when the text is entered in blank 17, store the text
public void textfield17_change1(GTextField source, GEvent event) { //_CODE_:textfield17:607868:
  println("textfield17 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank17 = textfield17.getText();
} //_CODE_:textfield17:607868:

//when the text is entered in blank 18, store the text
public void textfield18_change1(GTextField source, GEvent event) { //_CODE_:textfield18:563954:
  println("textfield18 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank18 = textfield18.getText();
} //_CODE_:textfield18:563954:

//if the show draft checkbox is clicked, add the text from the blanks to the template and display the e-mail draft
public void showDraft5_clicked1(GCheckbox source, GEvent event) { //_CODE_:showDraft5:333651:
  println("showDraft5 - GCheckbox event occured " + System.currentTimeMillis()%10000000 );
  textValue = "Hi "+recipientName+",\n\nI hope you're well. "+blank15+". Unfortunately, "+blank16+".\nLuckily, "+blank17+".\nHave a "+blank18+" day!\n\n"+senderName;
  if (showDraft5.isSelected()) showSpinDraft = true;
  else showSpinDraft = false;
} //_CODE_:showDraft5:333651:

//if the Draft it! (or Update it!) button is clicked
public void draft5button_click1(GButton source, GEvent event) { //_CODE_:draft5button:850420:
  println("draft5button - GButton event occured " + System.currentTimeMillis()%10000000 );
  //set the e-mail template text
  textValue = "Hi "+recipientName+",\n\nI hope you're well. "+blank16+". Unfortunately, "+blank15+".\nLuckily, "+blank17+".\nHave a "+blank18+" day!\n\n"+senderName;
  showSpinDraft = true;
  //if an e-mail has already been drafted, run the update function
  if(drafted){
  runUpdateDraftChoreo();
  }
  //if no e-mail has been drafted, draft an e-mail and change the button text to "Update it!"
  else {
  runCreateDraftChoreo();
  draft5button.setText("Update it!");
  }

} //_CODE_:draft5button:850420:

//when called, this displays the "Just checking in..." e-mail template window
synchronized public void checkinwin_draw1(GWinApplet appc, GWinData data) { //_CODE_:checkinWin:430740:
  appc.background(paper);
  appc.fill(0);
  if (showCheckInDraft) appc.text(textValue, 100, 400, 300, 250);
} //_CODE_:checkinWin:430740:

//when the text is entered in blank 19, store the text
public void textfield20_change1(GTextField source, GEvent event) { //_CODE_:textfield20:465548:
  println("textfield1 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank19 = textfield20.getText();
} //_CODE_:textfield20:465548:

//when the text is entered in blank 20, store the text
public void textfield19_change1(GTextField source, GEvent event) { //_CODE_:textfield19:728056:
  println("textfield19 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank20 = textfield19.getText();
} //_CODE_:textfield19:728056:

//when the text is entered in blank 21, store the text
public void textfield22_change1(GTextField source, GEvent event) { //_CODE_:textfield22:907651:
  println("textfield22 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank21 = textfield22.getText();
} //_CODE_:textfield22:907651:

//when the text is entered in blank 22, store the text
public void textfield21_change1(GTextField source, GEvent event) { //_CODE_:textfield21:580450: //<>//
  println("textfield21 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank22 = textfield21.getText();
} //_CODE_:textfield21:580450:

//if the show draft checkbox is clicked, add the text from the blanks to the template and display the e-mail draft
public void showDraft6_clicked1(GCheckbox source, GEvent event) { //_CODE_:showDraft6:763985:
  println("showDraft6 - GCheckbox event occured " + System.currentTimeMillis()%10000000 );
  textValue = "Hi "+recipientName+", \nJust checking in. It's been "+blank20+". Have you had a chance to "+blank19+"?\nI hope everything is going "+blank22+". Let me know if I can do anything to help with "+blank21+".\nHope to hear from you soon,\n\n"+senderName;
  if (showDraft6.isSelected()) showCheckInDraft = true;
  else showCheckInDraft = false;
} //_CODE_:showDraft6:763985:

//if the Draft it! (or Update it!) button is clicked
public void draft6button_click1(GButton source, GEvent event) { //_CODE_:draft6button:417115:
  println("draft6button - GButton event occured " + System.currentTimeMillis()%10000000 );
  //set the e-mail template text
  textValue = "Hi "+recipientName+",/nJust checking in. It's been "+blank19+". Have you had a chance to "+blank20+"?\nI hope everything is going "+blank21+". Let me know if I can do anything to help with "+blank22+".\n Hope to hear from you soon,\n\n"+senderName;
  showCheckInDraft = true;
  //if an e-mail has already been drafted, run the update function
  if(drafted){
  runUpdateDraftChoreo();
  }
  //if no e-mail has been drafted, draft an e-mail and change the button text to "Update it!"
  else {
  runCreateDraftChoreo();
  draft6button.setText("Update it!");
  }
  
} //_CODE_:draft6button:417115:

//when called, this displays the "Let's set up a meeting" e-mail template window
synchronized public void meetingwin_draw1(GWinApplet appc, GWinData data) { //_CODE_:meetingWin:508289:
  appc.background(paper);
  appc.fill(0);
  if (showMeetingDraft) appc.text(textValue, 100, 400, 300, 250);
} //_CODE_:meetingWin:508289:

//when the text is entered in blank 23, store the text
public void textfield23_change1(GTextField source, GEvent event) { //_CODE_:textfield23:440800:
  println("textfield23 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank23 = textfield23.getText();
} //_CODE_:textfield23:440800:

//when the text is entered in blank 24, store the text
public void textfield25_change1(GTextField source, GEvent event) { //_CODE_:textfield25:222059:
  println("textfield25 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank24 = textfield25.getText();
} //_CODE_:textfield25:222059:

//when the text is entered in blank 25, store the text
public void textfield24_change1(GTextField source, GEvent event) { //_CODE_:textfield24:565538:
  println("textfield24 - GTextField event occured " + System.currentTimeMillis()%10000000 );
  blank25 = textfield24.getText();
} //_CODE_:textfield24:565538:

//if the show draft checkbox is clicked, add the text from the blanks to the template and display the e-mail draft
public void showDraft7_clicked1(GCheckbox source, GEvent event) { //_CODE_:showDraft7:702769:
  println("showDraft7 - GCheckbox event occured " + System.currentTimeMillis()%10000000 );
  textValue = "Hi "+recipientName+",\nI'd like to set up a time to meet with you via "+blank23+" to discuss "+blank25+".\nI am availalbe "+blank24+". Please let me know when works for you.\nThanks,\n"+senderName;
  if (showDraft7.isSelected()) showMeetingDraft = true;
  else showMeetingDraft = false;
} //_CODE_:showDraft7:702769:

//if the Draft it! (or Update it!) button is clicked
public void draftbutton7_click1(GButton source, GEvent event) { //_CODE_:draftbutton7:317085:
  println("draftbutton7 - GButton event occured " + System.currentTimeMillis()%10000000 );
  //set the e-mail template text
  textValue = "Hi "+recipientName+",\nI'd like to set up a time to meet with you via "+blank23+" to discuss "+blank24+".\nI am availalbe "+blank25+". Please let me know when works for you.\nThanks,\n"+senderName;
  showMeetingDraft = true;
  //if an e-mail has already been drafted, run the update function
  if(drafted){
  runUpdateDraftChoreo();
  }
  //if no e-mail has been drafted, draft an e-mail and change the button text to "Update it!"
  else {
  runCreateDraftChoreo();
  draftbutton7.setText("Update it!");
  }

} //_CODE_:draftbutton7:317085:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI() {
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if (frame != null)
    frame.setTitle("HAB-LIBS");
  dropList1 = new GDropList(this, 100, 163, 300, 161, 7);
  dropList1.setItems(loadStrings("list_531326"), 0);
  dropList1.addEventHandler(this, "dropList1_click1");
  sender = new GTextField(this, 60, 390, 160, 30, G4P.SCROLLBARS_NONE);
  sender.setOpaque(true);
  sender.addEventHandler(this, "sender_change1");
  recipient = new GTextField(this, 280, 390, 160, 30, G4P.SCROLLBARS_NONE);
  recipient.setOpaque(true);
  recipient.addEventHandler(this, "recipient_change1");
  label1 = new GLabel(this, 100, 430, 80, 30);
  label1.setText("Sender");
  label1.setOpaque(false);
  label2 = new GLabel(this, 320, 430, 80, 30);
  label2.setText("Recipient");
  label2.setOpaque(false);
  playbutton = new GButton(this, 210, 500, 80, 30);
  playbutton.setText("Play!");
  playbutton.addEventHandler(this, "playbutton_click1");
  selectTemplate = new GLabel(this, 125, 125, 250, 30);
  selectTemplate.setText("Select a template to start");
  selectTemplate.setTextBold();
  selectTemplate.setOpaque(false);
  regretWin = new GWindow(this, "I regret to inform you...", 0, 0, 500, 700, false, JAVA2D);
  regretWin.setActionOnClose(G4P.CLOSE_WINDOW);
  regretWin.addDrawHandler(this, "regretwin_draw1");
  label24 = new GLabel(regretWin.papplet, 60, 80, 170, 30);
  label24.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label24.setText("what is your regret?");
  label24.setOpaque(false);
  label3 = new GLabel(regretWin.papplet, 60, 120, 170, 30);
  label3.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label3.setText("what does that mean?");
  label3.setOpaque(false);
  label4 = new GLabel(regretWin.papplet, 60, 160, 170, 29);
  label4.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label4.setText("how do you know this person?");
  label4.setOpaque(false);
  label5 = new GLabel(regretWin.papplet, 60, 200, 170, 30);
  label5.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label5.setText("pick an adjective");
  label5.setOpaque(false);
  textfield1 = new GTextField(regretWin.papplet, 250, 80, 200, 30, G4P.SCROLLBARS_NONE);
  textfield1.setOpaque(true);
  textfield1.addEventHandler(this, "textfield1_change1");
  textfield2 = new GTextField(regretWin.papplet, 250, 120, 200, 30, G4P.SCROLLBARS_NONE);
  textfield2.setOpaque(true);
  textfield2.addEventHandler(this, "textfield2_change1");
  textfield3 = new GTextField(regretWin.papplet, 250, 160, 200, 30, G4P.SCROLLBARS_NONE);
  textfield3.setOpaque(true);
  textfield3.addEventHandler(this, "textfield3_change1");
  textfield4 = new GTextField(regretWin.papplet, 250, 200, 200, 30, G4P.SCROLLBARS_NONE);
  textfield4.setOpaque(true);
  textfield4.addEventHandler(this, "textfield4_change1");
  showDraft = new GCheckbox(regretWin.papplet, 175, 250, 150, 30);
  showDraft.setText("show me the draft!");
  showDraft.setOpaque(false);
  showDraft.addEventHandler(this, "showDraft_clicked1");
  draftbutton = new GButton(regretWin.papplet, 210, 290, 80, 30);
  draftbutton.setText("Draft it!");
  draftbutton.addEventHandler(this, "draftbutton_click1");
  regretTitle = new GLabel(regretWin.papplet, 125, 20, 250, 30);
  regretTitle.setText("I regret to inform you...");
  regretTitle.setTextBold();
  regretTitle.setOpaque(false);
  inquiryWin = new GWindow(this, "Thank you for your inquiry...", 0, 0, 500, 700, false, JAVA2D);
  inquiryWin.setActionOnClose(G4P.CLOSE_WINDOW);
  inquiryWin.addDrawHandler(this, "inquirywin_draw1");
  label6 = new GLabel(inquiryWin.papplet, 30, 80, 200, 30);
  label6.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label6.setText("time of day");
  label6.setOpaque(false);
  label7 = new GLabel(inquiryWin.papplet, 30, 120, 200, 30);
  label7.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label7.setText("describe the inquiry");
  label7.setOpaque(false);
  label8 = new GLabel(inquiryWin.papplet, 30, 160, 200, 30);
  label8.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label8.setText("share the answer, or describe how to get the answer");
  label8.setOpaque(false);
  label9 = new GLabel(inquiryWin.papplet, 30, 200, 200, 30);
  label9.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label9.setText("something you really hate doing, but have to offer to do anyway");
  label9.setOpaque(false);
  textfield8 = new GTextField(inquiryWin.papplet, 250, 80, 200, 30, G4P.SCROLLBARS_NONE);
  textfield8.setOpaque(true);
  textfield8.addEventHandler(this, "textfield8_change1");
  textfield5 = new GTextField(inquiryWin.papplet, 250, 120, 200, 30, G4P.SCROLLBARS_NONE);
  textfield5.setOpaque(true);
  textfield5.addEventHandler(this, "textfield5_change1");
  textfield6 = new GTextField(inquiryWin.papplet, 250, 160, 200, 30, G4P.SCROLLBARS_NONE);
  textfield6.setOpaque(true);
  textfield6.addEventHandler(this, "textfield6_change1");
  textfield7 = new GTextField(inquiryWin.papplet, 250, 200, 200, 30, G4P.SCROLLBARS_NONE);
  textfield7.setOpaque(true);
  textfield7.addEventHandler(this, "textfield7_change1");
  showDraft2 = new GCheckbox(inquiryWin.papplet, 175, 250, 150, 30);
  showDraft2.setText("show me the draft!");
  showDraft2.setOpaque(false);
  showDraft2.addEventHandler(this, "showDraft2_clicked1");
  draft2button = new GButton(inquiryWin.papplet, 210, 290, 80, 30);
  draft2button.setText("Draft it!");
  draft2button.addEventHandler(this, "draft2button_click1");
  inquiryTitle = new GLabel(inquiryWin.papplet, 125, 20, 250, 30);
  inquiryTitle.setText("Thank you for your inquiry...");
  inquiryTitle.setTextBold();
  inquiryTitle.setOpaque(false);
  outofofficeWin = new GWindow(this, "Out of the Office", 0, 0, 500, 700, false, JAVA2D);
  outofofficeWin.setActionOnClose(G4P.CLOSE_WINDOW);
  outofofficeWin.addDrawHandler(this, "outwin_draw1");
  textfield9 = new GTextField(outofofficeWin.papplet, 250, 80, 200, 30, G4P.SCROLLBARS_NONE);
  textfield9.setOpaque(true);
  textfield9.addEventHandler(this, "textfield9_change1");
  label10 = new GLabel(outofofficeWin.papplet, 25, 80, 210, 30);
  label10.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label10.setText("when are you returning to the office?");
  label10.setOpaque(false);
  label11 = new GLabel(outofofficeWin.papplet, 25, 120, 210, 30);
  label11.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label11.setText("your boss/lazy coworker/office frenemy and their contact info");
  label11.setOpaque(false);
  textfield11 = new GTextField(outofofficeWin.papplet, 250, 120, 200, 30, G4P.SCROLLBARS_NONE);
  textfield11.setOpaque(true);
  textfield11.addEventHandler(this, "textfield11_change1");
  label12 = new GLabel(outofofficeWin.papplet, 25, 160, 210, 30);
  label12.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label12.setText("reason you're really out of the office");
  label12.setOpaque(false);
  textfield10 = new GTextField(outofofficeWin.papplet, 250, 160, 200, 30, G4P.SCROLLBARS_NONE);
  textfield10.setOpaque(true);
  textfield10.addEventHandler(this, "textfield10_change1");
  showDraft3 = new GCheckbox(outofofficeWin.papplet, 175, 200, 150, 30);
  showDraft3.setText("show me the draft!");
  showDraft3.setOpaque(false);
  showDraft3.addEventHandler(this, "showDraft3_clicked1");
  draft3button = new GButton(outofofficeWin.papplet, 210, 250, 80, 30);
  draft3button.setText("Draft it!");
  draft3button.addEventHandler(this, "draft3button_click1");
  outofofficeTitle = new GLabel(outofofficeWin.papplet, 125, 20, 250, 30);
  outofofficeTitle.setText("I'm out of the office...");
  outofofficeTitle.setTextBold();
  outofofficeTitle.setOpaque(false);
  redirectWin = new GWindow(this, "Let me introduce you to my colleague...", 0, 0, 500, 700, false, JAVA2D);
  redirectWin.setActionOnClose(G4P.CLOSE_WINDOW);
  redirectWin.addDrawHandler(this, "redirectwin_draw1");
  label13 = new GLabel(redirectWin.papplet, 30, 80, 200, 30);
  label13.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label13.setText("describe the question");
  label13.setOpaque(false);
  textfield12 = new GTextField(redirectWin.papplet, 250, 80, 200, 30, G4P.SCROLLBARS_NONE);
  textfield12.setOpaque(true);
  textfield12.addEventHandler(this, "textfield12_change1");
  textfield13 = new GTextField(redirectWin.papplet, 250, 120, 200, 30, G4P.SCROLLBARS_NONE);
  textfield13.setOpaque(true);
  textfield13.addEventHandler(this, "textfield13_change1");
  label14 = new GLabel(redirectWin.papplet, 30, 120, 200, 30);
  label14.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label14.setText("who'se the lucky person you're pawning this off on?");
  label14.setOpaque(false);
  label15 = new GLabel(redirectWin.papplet, 30, 160, 200, 30);
  label15.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label15.setText("what are the poor sucker's qualifications?");
  label15.setOpaque(false);
  textfield14 = new GTextField(redirectWin.papplet, 250, 160, 200, 30, G4P.SCROLLBARS_NONE);
  textfield14.setOpaque(true);
  textfield14.addEventHandler(this, "textfield14_change1");
  showDraft4 = new GCheckbox(redirectWin.papplet, 175, 200, 150, 30);
  showDraft4.setText("show me the draft!");
  showDraft4.setOpaque(false);
  showDraft4.addEventHandler(this, "showDraft4_clicked1");
  draft4button = new GButton(redirectWin.papplet, 210, 250, 80, 30);
  draft4button.setText("Draft it!");
  draft4button.addEventHandler(this, "draft4button_click1");
  redirectTitle = new GLabel(redirectWin.papplet, 125, 20, 250, 30);
  redirectTitle.setText("Let me introduce you to my colleague...");
  redirectTitle.setTextBold();
  redirectTitle.setOpaque(false);
  spinWin = new GWindow(this, "Don't forget the compliment sandwich...", 0, 0, 500, 700, false, JAVA2D);
  spinWin.setActionOnClose(G4P.CLOSE_WINDOW);
  spinWin.addDrawHandler(this, "spinwin_draw1");
  label16 = new GLabel(spinWin.papplet, 20, 80, 210, 30);
  label16.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label16.setText("say something nice to grease up the recipient");
  label16.setOpaque(false);
  label17 = new GLabel(spinWin.papplet, 20, 120, 210, 30);
  label17.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label17.setText("what's the bad news?");
  label17.setOpaque(false);
  label18 = new GLabel(spinWin.papplet, 20, 160, 210, 30);
  label18.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label18.setText("spin the bad news so it sounds like good news");
  label18.setOpaque(false);
  label19 = new GLabel(spinWin.papplet, 20, 200, 210, 30);
  label19.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label19.setText("pick an adjective");
  label19.setOpaque(false);
  textfield16 = new GTextField(spinWin.papplet, 250, 120, 200, 30, G4P.SCROLLBARS_NONE);
  textfield16.setOpaque(true);
  textfield16.addEventHandler(this, "textfield16_change1");
  textfield15 = new GTextField(spinWin.papplet, 250, 80, 200, 30, G4P.SCROLLBARS_NONE);
  textfield15.setOpaque(true);
  textfield15.addEventHandler(this, "textfield15_change1");
  textfield17 = new GTextField(spinWin.papplet, 250, 160, 200, 30, G4P.SCROLLBARS_NONE);
  textfield17.setOpaque(true);
  textfield17.addEventHandler(this, "textfield17_change1");
  textfield18 = new GTextField(spinWin.papplet, 250, 200, 200, 30, G4P.SCROLLBARS_NONE);
  textfield18.setOpaque(true);
  textfield18.addEventHandler(this, "textfield18_change1");
  showDraft5 = new GCheckbox(spinWin.papplet, 175, 250, 150, 30);
  showDraft5.setText("show me the draft!");
  showDraft5.setOpaque(false);
  showDraft5.addEventHandler(this, "showDraft5_clicked1");
  draft5button = new GButton(spinWin.papplet, 210, 290, 80, 30);
  draft5button.setText("Draft it!");
  draft5button.addEventHandler(this, "draft5button_click1");
  spinTitle = new GLabel(spinWin.papplet, 125, 20, 250, 30);
  spinTitle.setText("Don't forget the compliment sandwich...");
  spinTitle.setTextBold();
  spinTitle.setOpaque(false);
  checkinWin = new GWindow(this, "Just checking in...", 0, 0, 500, 700, false, JAVA2D);
  checkinWin.setActionOnClose(G4P.CLOSE_WINDOW);
  checkinWin.addDrawHandler(this, "checkinwin_draw1");
  label20 = new GLabel(checkinWin.papplet, 5, 80, 225, 30);
  label20.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label20.setText("how long has is been since you heard from the person?");
  label20.setOpaque(false);
  label21 = new GLabel(checkinWin.papplet, 5, 120, 225, 35);
  label21.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label21.setText("why do you think this person has stopped responding to your emails?");
  label21.setOpaque(false);
  label22 = new GLabel(checkinWin.papplet, 5, 160, 225, 30);
  label22.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label22.setText("pick an adjective");
  label22.setOpaque(false);
  label23 = new GLabel(checkinWin.papplet, 5, 200, 225, 30);
  label23.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label23.setText("reiterate, for the 5th time, what you need from the recipient");
  label23.setOpaque(false);
  textfield20 = new GTextField(checkinWin.papplet, 250, 120, 200, 30, G4P.SCROLLBARS_NONE);
  textfield20.setOpaque(true);
  textfield20.addEventHandler(this, "textfield20_change1");
  textfield19 = new GTextField(checkinWin.papplet, 250, 80, 200, 30, G4P.SCROLLBARS_NONE);
  textfield19.setOpaque(true);
  textfield19.addEventHandler(this, "textfield19_change1");
  textfield22 = new GTextField(checkinWin.papplet, 250, 200, 200, 30, G4P.SCROLLBARS_NONE);
  textfield22.setOpaque(true);
  textfield22.addEventHandler(this, "textfield22_change1");
  textfield21 = new GTextField(checkinWin.papplet, 250, 160, 200, 30, G4P.SCROLLBARS_NONE);
  textfield21.setOpaque(true);
  textfield21.addEventHandler(this, "textfield21_change1");
  showDraft6 = new GCheckbox(checkinWin.papplet, 175, 250, 150, 30);
  showDraft6.setText("show me the draft!");
  showDraft6.setOpaque(false);
  showDraft6.addEventHandler(this, "showDraft6_clicked1");
  draft6button = new GButton(checkinWin.papplet, 210, 290, 80, 30);
  draft6button.setText("Draft it!");
  draft6button.addEventHandler(this, "draft6button_click1");
  checkinTitle = new GLabel(checkinWin.papplet, 125, 30, 250, 30);
  checkinTitle.setText("Just checking in...");
  checkinTitle.setTextBold();
  checkinTitle.setOpaque(false);
  meetingWin = new GWindow(this, "Window title", 0, 0, 500, 700, false, JAVA2D);
  meetingWin.setActionOnClose(G4P.CLOSE_WINDOW);
  meetingWin.addDrawHandler(this, "meetingwin_draw1");
  meetingTitle = new GLabel(meetingWin.papplet, 125, 20, 250, 30);
  meetingTitle.setText("Let's set up a time to meet...");
  meetingTitle.setTextBold();
  meetingTitle.setOpaque(false);
  label25 = new GLabel(meetingWin.papplet, 30, 80, 200, 30);
  label25.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label25.setText("how are you going to do this shit?");
  label25.setOpaque(false);
  label27 = new GLabel(meetingWin.papplet, 30, 160, 200, 30);
  label27.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label27.setText("when are you available?");
  label27.setOpaque(false);
  label26 = new GLabel(meetingWin.papplet, 30, 120, 200, 30);
  label26.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label26.setText("what bullshit do you have to pretend to talk about");
  label26.setOpaque(false);
  textfield23 = new GTextField(meetingWin.papplet, 250, 80, 200, 30, G4P.SCROLLBARS_NONE);
  textfield23.setOpaque(true);
  textfield23.addEventHandler(this, "textfield23_change1");
  textfield25 = new GTextField(meetingWin.papplet, 250, 160, 200, 30, G4P.SCROLLBARS_NONE);
  textfield25.setOpaque(true);
  textfield25.addEventHandler(this, "textfield25_change1");
  textfield24 = new GTextField(meetingWin.papplet, 250, 120, 200, 30, G4P.SCROLLBARS_NONE);
  textfield24.setOpaque(true);
  textfield24.addEventHandler(this, "textfield24_change1");
  showDraft7 = new GCheckbox(meetingWin.papplet, 175, 200, 150, 30);
  showDraft7.setText("show me the draft!");
  showDraft7.setOpaque(false);
  showDraft7.addEventHandler(this, "showDraft7_clicked1");
  draftbutton7 = new GButton(meetingWin.papplet, 210, 250, 80, 30);
  draftbutton7.setText("Draft it!");
  draftbutton7.addEventHandler(this, "draftbutton7_click1");
}

// Variable declarations 
// autogenerated do not edit
GDropList dropList1; 
GTextField sender; 
GTextField recipient; 
GLabel label1; 
GLabel label2; 
GButton playbutton; 
GLabel selectTemplate; 
GWindow regretWin;
GLabel label24; 
GLabel label3; 
GLabel label4; 
GLabel label5; 
GTextField textfield1; 
GTextField textfield2; 
GTextField textfield3; 
GTextField textfield4; 
GCheckbox showDraft; 
GButton draftbutton; 
GLabel regretTitle; 
GWindow inquiryWin;
GLabel label6; 
GLabel label7; 
GLabel label8; 
GLabel label9; 
GTextField textfield8; 
GTextField textfield5; 
GTextField textfield6; 
GTextField textfield7; 
GCheckbox showDraft2; 
GButton draft2button; 
GLabel inquiryTitle; 
GWindow outofofficeWin;
GTextField textfield9; 
GLabel label10; 
GLabel label11; 
GTextField textfield11; 
GLabel label12; 
GTextField textfield10; 
GCheckbox showDraft3; 
GButton draft3button; 
GLabel outofofficeTitle; 
GWindow redirectWin;
GLabel label13; 
GTextField textfield12; 
GTextField textfield13; 
GLabel label14; 
GLabel label15; 
GTextField textfield14; 
GCheckbox showDraft4; 
GButton draft4button; 
GLabel redirectTitle; 
GWindow spinWin;
GLabel label16; 
GLabel label17; 
GLabel label18; 
GLabel label19; 
GTextField textfield16; 
GTextField textfield15; 
GTextField textfield17; 
GTextField textfield18; 
GCheckbox showDraft5; 
GButton draft5button; 
GLabel spinTitle; 
GWindow checkinWin;
GLabel label20; 
GLabel label21; 
GLabel label22; 
GLabel label23; 
GTextField textfield20; 
GTextField textfield19; 
GTextField textfield22; 
GTextField textfield21; 
GCheckbox showDraft6; 
GButton draft6button; 
GLabel checkinTitle; 
GWindow meetingWin;
GLabel meetingTitle; 
GLabel label25; 
GLabel label27; 
GLabel label26; 
GTextField textfield23; 
GTextField textfield25; 
GTextField textfield24; 
GCheckbox showDraft7; 
GButton draftbutton7; 
