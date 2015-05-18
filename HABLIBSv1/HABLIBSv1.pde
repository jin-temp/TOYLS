//* In order to get e-mail functionality for this application,
// you'll need to set up an account at temboo.com (it's free!)
// Follow the instructions at https://temboo.com/library/Library/Google/OAuth/
//  to obtain Client ID, Client Secret, and Refresh token
//
//
//BE SURE TO REPLACE THE PLACEHOLDERS WITH YOUR TEMBOO APPLICATION DETAILS 
//AND YOUR OAUTH CREDENTIALS IN THE EMAIL TAB 
//OR EMAIL DRAFTING AND UPDATING WILL NOT WORK




// import the G4P library for gui
import g4p_controls.*;
//import the temboo library for gmail connection
import com.temboo.core.*;
import com.temboo.Library.Google.Gmailv2.Drafts.*;

boolean homeScreen;
//set up the booleans so we know whether or not to show the e-mail draft
boolean showRegretDraft = false;
boolean showInquiryDraft = false;
boolean showOutOfOfficeDraft = false;
boolean showRedirectDraft = false;
boolean showSpinDraft = false;
boolean showCheckInDraft = false;
boolean showMeetingDraft = false;
//set up a boolean so we know whether or not an email has already been drafted
boolean drafted = false;


// Create a session using your Temboo account application details 
// this info can be found after logging into Temboo and clicking Account > Applications 
TembooSession session = new TembooSession("ACCOUNT", "APPLICATION", "KEY");
//set up variables to store information about the drafted e-mail
JSONObject draftInfo;
String draftID;
String refreshToken;
String callbackID;
//set up a variable for the e-mail draft body text
String textValue = "";
//set up a variable to count the number of e-mails we've drafted this session
int n = 0;
//set the drafted e-mail subject
String subject = "HABLIBS DRAFT "+n;
//store the sender and recipient names
String senderName = "";
String recipientName= "";
//set up strings to store input text from the blank textfields
String blank1 = "";
String blank2 = "";
String blank3 = "";
String blank4 = "";
String blank5 = "";
String blank6 = "";
String blank7 = "";
String blank8 = "";
String blank9 = "";
String blank10 = "";
String blank11 = "";
String blank12 = "";
String blank13 = "";
String blank14 = "";
String blank15 = "";
String blank16 = "";
String blank17 = "";
String blank18 = "";
String blank19 = "";
String blank20 = "";
String blank21 = "";
String blank22 = "";
String blank23 = "";
String blank24 = "";
String blank25 = "";

int draftNum;
PImage paper;
//enable tab control in each of the windows
GTabManager tabhome;
GTabManager tabregret;
GTabManager tabinquiry;
GTabManager tabout;
GTabManager tabredirect;
GTabManager tabspin;
GTabManager tabcheckin;
GTabManager tabmeeting;

public void setup(){
  size(500, 700, JAVA2D);
  //load a paper texture and resize it to fit the screen
  paper = loadImage("papertexture.jpg");
  paper.resize(500, 700);
  //the program starts on the home screen, displaying the home gui
  homeScreen = true;
  homeGUI();
  

}

public void draw(){
  //draw the image to the background of the window
  background(paper);

}
