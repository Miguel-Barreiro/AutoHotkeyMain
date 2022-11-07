;*******************************************************
; Want a clear path for learning AutoHotkey; Take a look at our AutoHotkey Udemy courses.  They're structured in a way to make learning AHK EASY
; Right now you can  get a coupon code here: https://the-Automator.com/Learn
;*******************************************************

SingleInstance,Force
;*****</code>#**************************************************</pre>
<pre><code>; TS=Title_Size TF=Title_Font  TC=Title_Color
; SI=Speed_In SC=Speed_Clear ST=Speed_Timeout"
; GC=GUI_Color GT=GUI_Transparencey
; MS=Message_Fontsize  MC=MessageText_Color
; image=300
;************************************************************
Notify("wow","my message",3,"TS=15 TF=Arial TC=0xff00FF GC=0x0aa000 MS=10 SI=1000 image=298")
Notify("wow","my message",3,"TS=15 TF=Arial TC=0xff00FF GC=0x0aa000 MS=10 SI=1000")
Notify("wow","my message",3,"TS=15 TF=Arial TC=0xff00FF GC=0x0aa000 MS=10 SI=2000 image=298")


Notify("Notify() Demo Script...","Static/One-time options...`nGeneral usage/syntax...",0,"SI=2500 SC=2000 Image=300")
Notify("Using Option=  vs.  Option_=","Changing color",4,"GC_=Yellow TS_=20 SI=1000 Style=Save")
Notify("Using Option=  vs.  Option_=","Changing color",4,"GC_=Red TS_=20 SI=1000 Style=Save")

Notify("Notify() Demo Script...","Static/One-time options...`nGeneral usage/syntax...",0,"SI=2000 Image=44")
Notify("","","","Title=Alternate calling method Message=The first three parameters are blank Duration=4 Image=300 GC=0xddddff BC=0x0000FF")  ;

;********************Styles***********************************
Notify("Error"    ,"Error style"    ,5,"Style=Error")
Notify("Warning"  ,"Warning style"  ,5,"Style=Warning")
Notify("Info"     ,"Info style"     ,5,"Style=Info")
Notify("Load"     ,"Load style"     ,5,"Style=Load")
Notify("Progress" ,"Progress style" ,5,"Style=Progress")
Notify("BallonTip","BallonTip style",5,"Style=BallonTip")

;********************Killing script(s)***********************************
;~ Notify("","","","Wait=" Notify("I'm pausing the script until clicked","the Wait=All command next will kill em all",0,"BR=13 GR=9 BW=2 GC=ddddff BC=0000ff BC= TS= MS= TC=Default MC=Default TC=Blue TF=Arial SI=150 SC=100 ST=100 Image=48 IW=32 IH=32"))
;~ Notify("","",-.01,"Wait=All") ; kills all open notify's


;********************Kill this script***********************************
;~ Notify("when this one is clicked it`nwill kill the script via negative duration","","-0","Style=Load")

;********************Installing / Statusbar update***********************************
Nid3:=Notify("Installing...","Initializing...",0,"SI=500 ST=250  ST=250  PG=50  PH=20 Image=163 IW=64 IH=64")
sleep,100
SetTimer, UpdateProgress, % A := 100
Return

UpdateProgress:
A:=A-2
sleep, 200 ;This will change the speed
Notify("",A "% left to go...","+1","Update=" Nid3)  ;Have it update the SAME status bar
If (A &lt; 1)  {
  SetTimer, UpdateProgress, Off ;Exit out of setTimer
  Notify("","Finished!","","Update=" Nid3) ;Change SAME statusbar to Finished!
}
Return