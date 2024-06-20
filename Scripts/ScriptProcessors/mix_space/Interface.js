Content.makeFrontInterface(730, 450);

Content.getComponent("Threshold").setControlCallback(onThresholdControl);
Content.getComponent("Ratio").setControlCallback(onRatioControl);
Content.getComponent("Attack").setControlCallback(onAttackControl);
Content.getComponent("Release").setControlCallback(onReleaseControl);
Content.getComponent("Smoothing").setControlCallback(onSmoothingControl);

const var ThresholdValue = Content.getComponent("ThresholdValue");
const var RatioValue = Content.getComponent("RatioValue");
const var AttackValue = Content.getComponent("AttackValue");
const var ReleaseValue = Content.getComponent("ReleaseValue");
const var SmoothingValue = Content.getComponent("SmoothingValue");
const var DynamicEQ = Synth.getEffect("DynamicEQ");

inline function onThresholdControl(component, value)
{	
	local v = Engine.doubleToString(value, 2) + "dB";
	DynamicEQ.setAttribute(0, value);
	ThresholdValue.set("text", v);
};

inline function onRatioControl(component, value)
{
	local v = Engine.doubleToString(value, 1);
	DynamicEQ.setAttribute(1, value);
	RatioValue.set("text", v);
};


inline function onAttackControl(component, value)
{
	local v = Engine.doubleToString(value, 1) + "ms";
	DynamicEQ.setAttribute(2, value);
	AttackValue.set("text", v);
};


inline function onReleaseControl(component, value)
{
	local v = Engine.doubleToString(value, 1) + "ms";
	DynamicEQ.setAttribute(3, value);
	ReleaseValue.set("text", v);
};


inline function onSmoothingControl(component, value)
{
	local v = Engine.doubleToString(value, 1);
	DynamicEQ.setAttribute(4, value);
	SmoothingValue.set("text", v);
}
function onNoteOn()
{
	
}
 function onNoteOff()
{
	
}
 function onController()
{
	
}
 function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
 
