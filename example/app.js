// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
    backgroundColor: 'white'
});
win.open();

var TF = require('com.ti.tokenfield');

var tf = TF.createView({
    top:0,
    height: 30,
    width: Ti.UI.FILL
});
win.add(tf);

//tf.setColor('blue');


