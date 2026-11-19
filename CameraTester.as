package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.media.Camera;
	import fl.controls.ComboBox;
	import fl.controls.CheckBox;
	import fl.data.DataProvider;
	import flash.events.MouseEvent;
	import flash.media.Video;
	import fl.controls.Label;
	import flash.display.StageScaleMode;
	import flash.display.StageAlign;
	
	public class CameraTester extends MovieClip {
		
		var cam:Camera;
		var video:Video=null;
		
		public function CameraTester() {
			// constructor code
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		public function init(e:Event=null) {
			stage.scaleMode=flash.display.StageScaleMode.NO_SCALE;
			stage.align=flash.display.StageAlign.TOP_LEFT;
			
			(comboCamera as ComboBox).dataProvider.addItems(Camera.names);
			(comboCamera as ComboBox).selectedIndex=0;
			(comboWidth as ComboBox).dataProvider.addItems( [80,160,240,320,640,800,1024,1280,1536,1600,1920,2048,2240]);
			(comboWidth as ComboBox).selectedIndex=1;
			(comboHeight as ComboBox).dataProvider.addItems([60,120,160,240,480,600, 720, 768, 960,1080,1180,1200,1536,1680]);
			(comboHeight as ComboBox).selectedIndex=1;
			(comboFPS as ComboBox).dataProvider.addItems([10,12,15,24,25,30,50,60,100]);
			(comboFPS as ComboBox).selectedIndex=4;
			(cArea as CheckBox).selected=true;
			(comboCamera as ComboBox).addEventListener(Event.CHANGE, selectCamera);
			bTest.addEventListener(MouseEvent.CLICK, bTestClick);
			trace("INIT");
			selectCamera();
		}
		
		public function selectCamera(e:Event=null) {
			trace("selecting camera #"+(comboCamera as ComboBox).selectedIndex+" : "+(comboCamera as ComboBox).selectedItem.data);
			cam=Camera.getCamera((comboCamera as ComboBox).selectedIndex as String);
			if (cam!=null) trace("succesfully selected"); else trace("error selecting camera");
			bTestClick(null);
		}
		
		public function bTestClick(e:MouseEvent=null) {
			if (cam!=null) {
				trace("testing...");
				var w:Number=(comboWidth as ComboBox).selectedItem.data as Number;
				var h:Number=(comboHeight as ComboBox).selectedItem.data as Number;
				var f:Number=(comboFPS as ComboBox).selectedItem.data as Number;
				var a:Boolean=(cArea as CheckBox).selected;
				trace(w+"x"+h+":"+f+"("+(a?"area":"vel.")+")");
				cam.setMode(w,h,f);
				
				// show real values
				(lWidth as Label).text=String(cam.width);
				(lHeight as Label).text=String(cam.height);
				(lFPS as Label).text=String(cam.fps);
				// resize video output
				if (video!=null) {
					this.removeChild(video);
					video.attachCamera(null);
					video=null;
				}
				video = new Video(cam.width, cam.height);
				(video as Video).attachCamera(cam);
				this.addChild(video);
				video.y=60;
				//(video as Video).width=cam.width;
				//(video as Video).height=cam.height;
			}
		}
		
	}
	
}
