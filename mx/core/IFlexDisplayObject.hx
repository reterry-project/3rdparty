package mx.core;


#if flash
import flash.accessibility.AccessibilityProperties;
#end
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.display.IBitmapDrawable;
import flash.display.LoaderInfo;
import flash.display.Stage;
import flash.display.BlendMode;
import flash.filters.BitmapFilter;
import flash.events.IEventDispatcher;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.geom.Transform;

interface IFlexDisplayObject extends IBitmapDrawable extends IEventDispatcher
{
    
    
    
    var visible(get, set) : Bool;
    
    
    
    var rotation(get, set) : Float;
    
    
    
    var name(get, set) : String;
    
    
    
    var width(get, set) : Float;
    
    var measuredHeight(get, never) : Float;

    
    
    var blendMode(get, set) : BlendMode;    
    
    
    
    var scale9Grid(get, set) : Rectangle;
    
    
    
    var scaleX(get, set) : Float;
    
    
    
    var scaleY(get, set) : Float;
    
    var measuredWidth(get, never) : Float;
    
    
    #if flash
    var accessibilityProperties(get, set) : AccessibilityProperties;
    #end 
    
    
    var scrollRect(get, set) : Rectangle;
    
    
    
    var cacheAsBitmap(get, set) : Bool;
    
    
    
    var height(get, set) : Float;
    #if flash
    var parent(get, never) : DisplayObjectContainer;
    #else
    var parent(default,null) : DisplayObjectContainer;
    #end
    
    #if flash
    var opaqueBackground(get, set) : Null<UInt>;
    #else
    var opaqueBackground : Null<Int>;
    #end
    
    
    var alpha(get, set) : Float;
    
    var mouseX(get, never) : Float;
    
    var mouseY(get, never) : Float;
    
    
    
    var mask(get, set) : DisplayObject;
    
    
    
    var transform(get, set) : Transform;
    
    var loaderInfo(get, never) : LoaderInfo;
    
    var root(get, never) : DisplayObject;
    
    
    
    var x(get, set) : Float;
    
    
    
    var y(get, set) : Float;
    
    
    
    var filters(get, set) : Array<BitmapFilter>;
    
    #if flash
    var stage(get, never) : Stage;
    #else
    var stage(default, null) : Stage;
    #end
    
    function localToGlobal(param1 : Point) : Point;
    
    function globalToLocal(param1 : Point) : Point;
    
    function getBounds(param1 : DisplayObject) : Rectangle;
    
    function setActualSize(param1 : Float, param2 : Float) : Void;
    
    function hitTestPoint(param1 : Float, param2 : Float, param3 : Bool = false) : Bool;
    
    function getRect(param1 : DisplayObject) : Rectangle;
    
    function move(param1 : Float, param2 : Float) : Void;
    
    function hitTestObject(param1 : DisplayObject) : Bool;
}


