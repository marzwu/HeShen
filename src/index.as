package {
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.net.URLRequest;

	public class index extends Sprite {

		private var effectLoader:Loader;

		public function index() {
			super();
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.color = 0x0;
			
			effectLoader = new Loader;
			effectLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);
			effectLoader.load(new URLRequest('../assets/init_effect.swf'));
			addChild(effectLoader);

			stage.addEventListener(Event.RESIZE, onResize);
		}
		
		protected function onResize(event:Event):void
		{
			resize();
		}
		
		protected function onComplete(event:Event):void {
			resize();
		}

		private function resize():void
		{
			effectLoader.x = (stage.stageWidth - effectLoader.width) >> 1;
			effectLoader.y = (stage.stageHeight - effectLoader.height) >> 1;
		}


	}
}
