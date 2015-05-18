function collectData() {
var sheet = SpreadsheetApp.getActiveSheet();

var response = UrlFetchApp.fetch("https://api.spark.io/v1/devices/DEVICE_ID/VARIABLE_NAME?access_token=ACCESS_TOKEN");

try {
var response = JSON.parse(response.getContentText()); // parse the JSON the Core API created
var result = unescape(response.result); // you'll need to unescape before your parse as JSON

try {
var p = JSON.parse(result); // parse the JSON you created
var d = new Date(); // time stamps are always good when taking readings
sheet.appendRow([d, p]); // append the date, data1, data2 to the sheet
} catch(e)
{
Logger.log("Unable to do second parse");
}
} catch(e)
{
Logger.log("Unable to return JSON");
}
}