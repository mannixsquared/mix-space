Processor 
Type SynthChain ID mix_space Bypassed Gain 	      �?Balance 	        VoiceLimit 	      P@KillFadeTime 	      4@IconColour 0 packageName  BuildVersion �  EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID Interface Bypassed Script lContent.makeFrontInterface(730, 450);

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
const var ParametriqEQ = Synth.getEffect("ParametriqEQ");

const GlobalRoutingManager = Engine.getGlobalRoutingManager();
const LowEq = GlobalRoutingManager.getCable("loweq");
Console.stop(true); LowEq.registerCallback(onLowEq, false);

inline function onThresholdControl(component, value)
{	
	local v = Engine.doubleToString(value, 2) + "db";
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

inline function onLowEq(value)
{
	local index = 1 * ParametriqEQ.BandOffset + ParametriqEQ.Gain;
	ParametriqEQ.setAttribute(index, -24 * value);
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
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content  Control type ScriptSlider id Threshold value 	    33<� Control type ScriptSlider id Ratio value 	   @33@ Control type ScriptSlider id Attack value 	      R@ Control type ScriptSlider id 	Release value 	   `fFW@ Control type ScriptSlider id Smoothing value 	   @33�? UIData  ContentProperties DeviceType 	Desktop Component 
type ScriptPanel id MainPanel x 	        y 	        width 	     Ȇ@height 	      |@bgColour 	1514537 itemColour 4278387459 itemColour2 4278387459 textColour 4281019179 Component type ScriptLabel id 	Version x 	      �@y 	      $@text V1.0 alignment right fontStyle Bold parentComponent MainPanel fontName Avenir Next fontSize 	      0@textColour 4280339679  Component type ScriptLabel id 	Company x 	     ��@y 	      >@alignment right text © Mannix Squared, 2024 textColour 4292926663 parentComponent MainPanel fontName Avenir Next fontSize 	      0@width 	     �b@ Component type ScriptLabel id Title x 	      S@y 	      3@width 	     �[@height 	      D@parentComponent MainPanel editable 0 text MIX SPACE fontName Avenir Next fontStyle 	Regular fontSize 	      :@alignment left textColour 4292926663  Component type ScriptFloatingTile id AnalyserTile x 	      4@y 	      T@width 	     ��@height 	     @p@parentComponent MainPanel ContentType AudioAnalyser bgColour 0 itemColour 2199964895 itemColour2 2365587455 textColour 0 Data K{
  "ProcessorId": "Analyser",
  "Index": 1,
  "FollowWorkspace": false
}  Component type ScriptFloatingTile id ParametriqEQTile x 	      4@y 	      T@width 	     ��@height 	     @p@parentComponent MainPanel ContentType FilterDisplay bgColour 0 itemColour 4294967295 itemColour2 0 Data z{
  "ProcessorId": "ParametriqEQ",
  "Index": -1,
  "FollowWorkspace": false,
  "GainRange": 24.0,
  "ShowLines": true
} textColour 1728053247  Component type ScriptSlider id Threshold x 	      3@y 	     @w@middlePosition 	      2�stepSize 	   ����?min 	      Y�max 	        suffix  dB pluginParameterName Threshold isPluginParameter 1 mode 	Decibel height 	      P@bgColour 0 itemColour 0 itemColour2 0 width 	      P@numStrips 	      P@filmstripImage !{PROJECT_FOLDER}subtle_knob.png  Component type ScriptLabel id ThresholdLabel x 	     �S@y 	      x@text THRESHOLD fontStyle Bold alignment right width 	     �R@height 	      4@textColour 4280339679 fontName Avenir Next fontSize 	      ,@ Component type ScriptLabel id ThresholdValue x 	      U@y 	     �x@alignment right text 
-28.20db width 	     �Q@height 	      4@textColour 4292926663 itemColour2 0 editable 0 fontName Avenir Next fontSize 	      ,@ Component type ScriptSlider id Ratio x 	     �c@y 	      w@stepSize 	   ����?max 	      $@defaultValue 	      �?height 	      P@bgColour 0 itemColour 
16777215 itemColour2 0 filmstripImage !{PROJECT_FOLDER}subtle_knob.png numStrips 	      P@width 	      P@ Component type ScriptLabel id RatioLabel x 	      k@y 	      x@text RATIO alignment right editable 0 fontStyle Bold width 	      I@height 	      4@fontName Avenir Next fontSize 	      ,@textColour 4280339679  Component type ScriptLabel id RatioValue x 	      k@y 	     �x@text 2.9 alignment right width 	      I@height 	      4@textColour 4292926663 itemColour2 0 editable 0 fontName Avenir Next fontSize 	      ,@ Component type ScriptSlider id Attack x 	     �r@y 	      w@stepSize 	   ����?max 	     �r@defaultValue 	      $@height 	      P@bgColour 0 itemColour2 0 filmstripImage !{PROJECT_FOLDER}subtle_knob.png numStrips 	      P@width 	      P@ Component type ScriptLabel id AttackLabel x 	     @v@y 	      x@width 	      N@height 	      4@text ATTACK fontStyle Bold alignment right fontName Avenir Next fontSize 	      ,@textColour 4280339679  Component type ScriptLabel id AttackValue x 	     �v@y 	     �x@itemColour2 0 textColour 4292926663 text 72.0ms width 	      I@height 	      4@alignment right editable 0 fontName Avenir Next fontSize 	      ,@ Component type ScriptSlider id 	Release x 	     p{@y 	      w@stepSize 	   ����?max 	     �r@defaultValue 	      I@height 	      P@bgColour 0 itemColour2 0 itemColour 0 filmstripImage !{PROJECT_FOLDER}subtle_knob.png numStrips 	      P@width 	      P@ Component type ScriptLabel id ReleaseLabel x 	     @@y 	      x@text 	RELEASE fontStyle Bold alignment right width 	      N@height 	      4@itemColour2 0 fontSize 	      ,@fontName Avenir Next textColour 4280339679  Component type ScriptLabel id ReleaseValue x 	     �@y 	     �x@alignment right width 	      I@height 	      4@text 93.1ms textColour 4292926663 editable 0 fontName Avenir Next fontSize 	      ,@ Component type ScriptSlider id Smoothing x 	      �@y 	      w@isPluginParameter 1 pluginParameterName Smoothing defaultValue 	   ����?height 	      P@bgColour 0 itemColour 0 itemColour2 0 filmstripImage !{PROJECT_FOLDER}subtle_knob.png width 	      P@numStrips 	      P@ Component type ScriptLabel id SmoothingLabel x 	      �@y 	      x@text SMOOTHING alignment right fontStyle Bold width 	     �Q@height 	      4@itemColour2 0 fontName Avenir Next fontSize 	      ,@textColour 4280339679  Component type ScriptLabel id SmoothingValue x 	     P�@y 	     �x@text 0.3 width 	      N@height 	      4@alignment right editable 0 fontName Avenir Next fontSize 	      ,@textColour 4292926663  Component type ScriptImage id Image1 x 	      (@y 	      "@width 	      N@height 	     �N@fileName {PROJECT_FOLDER}logo.png  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type 
ScriptFX ID DynamicEQ Bypassed NumFilters    Script � function prepareToPlay(sampleRate, blockSize)
{
	
}
 function processBlock(channels)
{
	
}
 function onControl(number, value)
{
	
}
  EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix 	NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ����Channel2    Send2 ����Channel3    Send3 ���� Content   Networks  Network ID DynamicEQ Version 0.0.0  UIData  ContentProperties DeviceType 	Desktop  Processor Type 	CurveEq ID ParametriqEQ Bypassed NumFilters    Band0 	        Band1 	   `*�X@Band2 	   ����?Band3 	      �?Band4 	      @Band5 	        Band6 	     @�@Band7 	   ����?Band8 	      �?Band9 	      @Band10 	        Band11 	   ����@Band12 	   ����?Band13 	      �?Band14 	      @FFTEnabled EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix 	NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ����Channel2 ����Send2 ����Channel3 ����Send3 ���� Processor Type 
Analyser ID 
Analyser Bypassed BufferSize 	      �@PreviewType 	      @EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix 	NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ����Channel2 ����Send2 ����Channel3 ����Send3 ���� Processor Type AudioLooper ID Audio Loop Player1 Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 SyncMode 	      �?PitchTracking 	        LoopEnabled 	      �?RootNote 	      P@SampleStartMod 	        Reversed 	        FileName ^/Users/johnmannix/Library/Mobile Documents/com~apple~CloudDocs/Music/You're So Creasable.wav min     max + loopStart     loopEnd + EditorStates BodyShown 1 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor 	Type SimpleEnvelope ID DefaultEnvelope1 Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?Attack 	        Release 	     ��@LinearMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type SimpleGain ID Simple Gain2 Bypassed Gain 	        Delay 	        Width 	      Y@Balance 	        InvertPolarity 	        EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Gain Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Delay Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Width Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Pan Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type AudioLooper ID Audio Loop Player2 Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 SyncMode 	      �?PitchTracking 	        LoopEnabled 	      �?RootNote 	      P@SampleStartMod 	        Reversed 	        FileName X/Volumes/External SSD/Samples/[VB] Hyperpop Pack Vol 1/one-shots/PL Liang Bua [VB].wav min     max �2 loopStart     loopEnd �2 EditorStates BodyShown 1 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor 	Type SimpleEnvelope ID DefaultEnvelope2 Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?Attack 	      @Release 	      $@LinearMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0    Send0 ����Channel1    Send1 ���� RoutingMatrix 	NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ����Channel2 ����Send2 ����Channel3 ����Send3 ���� macro_controls  macro name 	Macro 1 value 	        midi_cc ���� macro name 	Macro 2 value 	        midi_cc ���� macro name 	Macro 3 value 	        midi_cc ���� macro name 	Macro 4 value 	        midi_cc ���� macro name 	Macro 5 value 	        midi_cc ���� macro name 	Macro 6 value 	        midi_cc ���� macro name 	Macro 7 value 	        midi_cc ���� macro name 	Macro 8 value 	        midi_cc ���� MidiAutomation   MPEData Enabled  