[Ivy]
16E360F77DF47A7E 3.20 #module
>Proto >Proto Collection #zClass
An0 Application Big #zClass
An0 B #cInfo
An0 #process
An0 @TextInP .resExport .resExport #zField
An0 @TextInP .type .type #zField
An0 @TextInP .processKind .processKind #zField
An0 @AnnotationInP-0n ai ai #zField
An0 @MessageFlowInP-0n messageIn messageIn #zField
An0 @MessageFlowOutP-0n messageOut messageOut #zField
An0 @TextInP .xml .xml #zField
An0 @TextInP .responsibility .responsibility #zField
An0 @StartRequest f0 '' #zField
An0 @EndTask f1 '' #zField
An0 @RichDialog f5 '' #zField
An0 @PushWFArc f2 '' #zField
An0 @PushWFArc f3 '' #zField
>Proto An0 An0 Application #zField
An0 f0 outLink pipeline.ivp #txt
An0 f0 type pipeline.Data #txt
An0 f0 inParamDecl '<> param;' #txt
An0 f0 actionDecl 'pipeline.Data out;
' #txt
An0 f0 guid 16E360F787F84348 #txt
An0 f0 requestEnabled true #txt
An0 f0 triggerEnabled false #txt
An0 f0 callSignature pipeline() #txt
An0 f0 persist false #txt
An0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
An0 f0 caseData businessCase.attach=true #txt
An0 f0 showInStartList 1 #txt
An0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>pipeline.ivp</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
An0 f0 @C|.responsibility Everybody #txt
An0 f0 81 49 30 30 24 -10 #rect
An0 f0 @|StartRequestIcon #fIcon
An0 f1 type pipeline.Data #txt
An0 f1 81 177 30 30 0 15 #rect
An0 f1 @|EndIcon #fIcon
An0 f5 targetWindow NEW #txt
An0 f5 targetDisplay TOP #txt
An0 f5 richDialogId pipeline.Pipeline #txt
An0 f5 startMethod start() #txt
An0 f5 type pipeline.Data #txt
An0 f5 requestActionDecl '<> param;' #txt
An0 f5 responseActionDecl 'pipeline.Data out;
' #txt
An0 f5 responseMappingAction 'out=in;
' #txt
An0 f5 isAsynch false #txt
An0 f5 isInnerRd false #txt
An0 f5 userContext '* ' #txt
An0 f5 78 116 36 24 20 -2 #rect
An0 f5 @|RichDialogIcon #fIcon
An0 f2 expr out #txt
An0 f2 96 79 96 116 #arcP
An0 f3 expr out #txt
An0 f3 96 140 96 177 #arcP
>Proto An0 .type pipeline.Data #txt
>Proto An0 .processKind NORMAL #txt
>Proto An0 0 0 32 24 18 0 #rect
>Proto An0 @|BIcon #fIcon
An0 f0 mainOut f2 tail #connect
An0 f2 head f5 mainIn #connect
An0 f5 mainOut f3 tail #connect
An0 f3 head f1 mainIn #connect
