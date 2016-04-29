#QR Embedded Audio

Note: this is a proof of concept, there is only so much data can be put into a QR Code  

Take the audio you have and cut it down to only what you want to hear.  
Lower the quality to the lowest you can get, export as mp3 mono. (example.mp3 is the result of this step)

encode in base64 your mp3 file (base64 is a program included in many distrobutions)  

place this prepend the encoded output with: 
` data:text/html;charset=utf-8,<audio autoplay controls loop><source src="data:audio/mp3;base64,`  

append with:  
` " type="audio/mp3"></audio>`  
(example.txt, is a result of this step)  

embed this text in a qrcode, preferably using an application like qrencode (available in many distributions libraries)  

to scan, get an app to scan codes with, some android versions have this built in, I recommend [zxing scanner](https://github.com/zxing/zxing). copy all the text to a clipboard, paste into a browser window. 

this method, script as well as all examples are under CC-0, check COPYING.txt to read further.   
