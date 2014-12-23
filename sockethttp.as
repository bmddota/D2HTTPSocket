﻿/*
	EXAMPLE CODE

	Example usage of the D2HTTPSocket class, used for requesting a file from a webserver,
	and sending the string 'data-abc' to domain.ext/dota/test.php.
*/
package  {
	
	import flash.display.MovieClip;
	import flash.net.Socket;
	import flash.events.*;
	import flash.errors.IOError;
	import D2HTTPSocket;
	
	
	public class sockethttp extends MovieClip {
		
		//--dota vars
		public var gameAPI:Object;
		public var globals:Object;
		public var elementName:String;
		
		//Dota 2 HTTP Socket
		var sock:D2HTTPSocket;
		
		public function sockethttp() {
		}
		
		public function onLoaded() {
			sock = new D2HTTPSocket('*****.**', '***.**.***.***');
			//get dota/index.html
			sock.getDataAsync('dota/', callback1);
		}
		
		public function callback1( statusCode:int, data:String ) {
			trace('============CALLBACK 1===========');
			trace('Status: '+statusCode);
			trace(data);
			
			//post data-abc to dota/test.php
			sock.postDataAsync('dota/test.php','data-abc', callback2);
		}
		
		public function callback2( statusCode:int, data:String ) {
			trace('============CALLBACK 2===========');
			trace('Status: '+statusCode);
			trace(data);
		}
	}
	
}
