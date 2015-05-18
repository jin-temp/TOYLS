//this sets up the home window and gui controls
public void homeGUI() {
  //initiate the window
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if (frame != null)frame.setTitle("HAB-LIBS"); 
  
  // draw the GUI elements
  dropList1 = new GDropList(this, 100, 163, 300, 161, 7);
  dropList1.setItems(loadStrings("list_531326"), 0);
  dropList1.addEventHandler(this, "dropList1_click1");
  sender = new GTextField(this, 60, 390, 160, 30, G4P.SCROLLBARS_NONE);
  sender.setOpaque(true);
  sender.addEventHandler(this, "sender_change1");
  recipient = new GTextField(this, 280, 390, 160, 30, G4P.SCROLLBARS_NONE);
  recipient.setOpaque(true);
  recipient.addEventHandler(this, "recipient_change1");
  tabhome = new GTabManager();
  tabhome.addControls(sender, recipient);
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
}

//this sets up the "I regret to inform you" template window and gui controls
public void regretWindow () {
  //initiate the window
  regretWin = new GWindow(this, "I regret to inform you...", 0, 0, 500, 700, false, JAVA2D);
  regretWin.setActionOnClose(G4P.CLOSE_WINDOW);
  regretWin.addDrawHandler(this, "regretwin_draw1");
  textValue = " ";
  
  
  // draw the GUI elements
  regretTitle = new GLabel(regretWin.papplet, 125, 20, 250, 30);
  regretTitle.setText("I regret to inform you...");
  regretTitle.setTextBold();
  regretTitle.setOpaque(false);
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
  tabregret = new GTabManager();
  tabregret.addControls(textfield1, textfield2, textfield3, textfield4);
  showDraft = new GCheckbox(regretWin.papplet, 175, 250, 150, 30);
  showDraft.setText("show me the draft!");
  showDraft.setOpaque(false);
  showDraft.addEventHandler(this, "showDraft_clicked1");
  draftbutton = new GButton(regretWin.papplet, 210, 290, 80, 30);
  draftbutton.setText("Draft it!");
  draftbutton.addEventHandler(this, "draftbutton_click1");



}

//this sets up the "Thank you for your inquiry" template window and gui controls
public void inquiryWindow () {
  //initiate the window
  inquiryWin = new GWindow(this, "Thank you for your inquiry...", 0, 0, 500, 700, false, JAVA2D);
  inquiryWin.setActionOnClose(G4P.CLOSE_WINDOW);
  inquiryWin.addDrawHandler(this, "inquirywin_draw1");
  inquiryWin.setBackground(paper);
  textValue = " ";
  
  // draw the GUI elements
  inquiryTitle = new GLabel(inquiryWin.papplet, 125, 20, 250, 30);
  inquiryTitle.setText("Thank you for your inquiry...");
  inquiryTitle.setTextBold();
  inquiryTitle.setOpaque(false);
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
  tabinquiry = new GTabManager();
  tabinquiry.addControls(textfield8, textfield5, textfield6, textfield7);
  showDraft2 = new GCheckbox(inquiryWin.papplet, 175, 250, 150, 30);
  showDraft2.setText("show me the draft!");
  showDraft2.setOpaque(false);
  showDraft2.addEventHandler(this, "showDraft2_clicked1");
  draft2button = new GButton(inquiryWin.papplet, 210, 290, 80, 30);
  draft2button.setText("Draft it!");
  draft2button.addEventHandler(this, "draft2button_click1");



}

//this sets up the "Out of office" template window and gui controls
public void outOfOfficeWindow () {
  //initiate the window
  outofofficeWin = new GWindow(this, "Out of the Office", 0, 0, 500, 700, false, JAVA2D);
  outofofficeWin.setActionOnClose(G4P.CLOSE_WINDOW);
  outofofficeWin.addDrawHandler(this, "outwin_draw1");
  outofofficeWin.setBackground(paper);
  textValue = " ";

  // draw the GUI elements
  outofofficeTitle = new GLabel(outofofficeWin.papplet, 125, 20, 250, 30);
  outofofficeTitle.setText("I'm out of the office...");
  outofofficeTitle.setTextBold();
  outofofficeTitle.setOpaque(false);
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
  tabout = new GTabManager();
  tabout.addControls(textfield9, textfield11, textfield10);
  showDraft3 = new GCheckbox(outofofficeWin.papplet, 175, 200, 150, 30);
  showDraft3.setText("show me the draft!");
  showDraft3.setOpaque(false);
  showDraft3.addEventHandler(this, "showDraft3_clicked1");
  draft3button = new GButton(outofofficeWin.papplet, 210, 250, 80, 30);
  draft3button.setText("Draft it!");
  draft3button.addEventHandler(this, "draft3button_click1");

}

//this sets up the "Let me introduce you to my colleague" template window and gui controls
public void redirectWindow () {
  //initiate the window
  redirectWin = new GWindow(this, "Let me introduce you to my colleague...", 0, 0, 500, 700, false, JAVA2D);
  redirectWin.setActionOnClose(G4P.CLOSE_WINDOW);
  redirectWin.addDrawHandler(this, "redirectwin_draw1");
  redirectWin.setBackground(paper);
  textValue = " ";
  
  // draw the GUI elements
  redirectTitle = new GLabel(redirectWin.papplet, 125, 20, 250, 30);
  redirectTitle.setText("Let me introduce you to my colleague...");
  redirectTitle.setTextBold();
  redirectTitle.setOpaque(false);
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
  tabredirect = new GTabManager();
  tabredirect.addControls(textfield12, textfield13, textfield14);
  showDraft4 = new GCheckbox(redirectWin.papplet, 175, 200, 150, 30);
  showDraft4.setText("show me the draft!");
  showDraft4.setOpaque(false);
  showDraft4.addEventHandler(this, "showDraft4_clicked1");
  draft4button = new GButton(redirectWin.papplet, 210, 250, 80, 30);
  draft4button.setText("Draft it!");
  draft4button.addEventHandler(this, "draft4button_click1");


    
}
//this sets up the "Positive spin on bad news" template window and gui controls
public void spinWindow () {
  //initiate the window
  spinWin = new GWindow(this, "Don't forget the compliment sandwich...", 0, 0, 500, 700, false, JAVA2D);
  spinWin.setActionOnClose(G4P.CLOSE_WINDOW);
  spinWin.addDrawHandler(this, "spinwin_draw1");
  spinWin.setBackground(paper);
  textValue = " ";
  
  // draw the GUI elements
  spinTitle = new GLabel(spinWin.papplet, 125, 20, 250, 30);
  spinTitle.setText("Don't forget the compliment sandwich...");
  spinTitle.setTextBold();
  spinTitle.setOpaque(false);
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
  tabspin = new GTabManager();  
  tabspin.addControls(textfield15, textfield16, textfield17, textfield18);
  showDraft5 = new GCheckbox(spinWin.papplet, 175, 250, 150, 30);
  showDraft5.setText("show me the draft!");
  showDraft5.setOpaque(false);
  showDraft5.addEventHandler(this, "showDraft5_clicked1");
  draft5button = new GButton(spinWin.papplet, 210, 290, 80, 30);
  draft5button.setText("Draft it!");
  draft5button.addEventHandler(this, "draft5button_click1");

}

//this sets up the "Just checking in..." template window and gui controls
public void checkinWindow () {
  //initiate the window
  checkinWin = new GWindow(this, "Just checking in...", 0, 0, 500, 700, false, JAVA2D);
  checkinWin.setActionOnClose(G4P.CLOSE_WINDOW);
  checkinWin.addDrawHandler(this, "checkinwin_draw1");
  checkinWin.setBackground(paper);
  textValue = " ";
  
  // draw the GUI elements
  checkinTitle = new GLabel(checkinWin.papplet, 125, 30, 250, 30);
  checkinTitle.setText("Just checking in...");
  checkinTitle.setTextBold();
  checkinTitle.setOpaque(false);
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
  tabcheckin = new GTabManager();
  tabcheckin.addControls(textfield19, textfield20, textfield21, textfield22);
  showDraft6 = new GCheckbox(checkinWin.papplet, 175, 250, 150, 30);
  showDraft6.setText("show me the draft!");
  showDraft6.setOpaque(false);
  showDraft6.addEventHandler(this, "showDraft6_clicked1");
  draft6button = new GButton(checkinWin.papplet, 210, 290, 80, 30);
  draft6button.setText("Draft it!");
  draft6button.addEventHandler(this, "draft6button_click1");

  
}

//this sets up the "Let's set up a meeting" template window and gui controls
public void meetingWindow () {
  //initiate the window
  meetingWin = new GWindow(this, "Window title", 0, 0, 500, 700, false, JAVA2D);
  meetingWin.setActionOnClose(G4P.CLOSE_WINDOW);
  meetingWin.addDrawHandler(this, "meetingwin_draw1");
  meetingWin.setBackground(paper);
  textValue = " ";
  
  // draw the GUI elements
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
  tabmeeting = new GTabManager();
  tabmeeting.addControls(textfield23, textfield24, textfield25);
  showDraft7 = new GCheckbox(meetingWin.papplet, 175, 200, 150, 30);
  showDraft7.setText("show me the draft!");
  showDraft7.setOpaque(false);
  showDraft7.addEventHandler(this, "showDraft7_clicked1");
  draftbutton7 = new GButton(meetingWin.papplet, 210, 250, 80, 30);
  draftbutton7.setText("Draft it!");
  draftbutton7.addEventHandler(this, "draftbutton7_click1");
  
}
