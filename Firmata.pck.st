'From Cuis 5.0 of 7 November 2016 [latest update: #3589] on 29 January 2019 at 9:27:47 pm'!
'Description Please enter a description for this package'!
!provides: 'Firmata' 1 0!
SystemOrganization addCategory: #Firmata!


!classDefinition: #Firmata category: #Firmata!
Object subclass: #Firmata
	instanceVariableNames: 'port analogInputData digitalInputData digitalOutputData parsingSysex storedInputData sysexBytesRead waitForData executeMultiByteCommand multiByteChannel majorVersion minorVersion steppingProcess'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Firmata'!
!classDefinition: 'Firmata class' category: #Firmata!
Firmata class
	instanceVariableNames: ''!

!classDefinition: #FirmataConstants category: #Firmata!
Object subclass: #FirmataConstants
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Firmata'!
!classDefinition: 'FirmataConstants class' category: #Firmata!
FirmataConstants class
	instanceVariableNames: ''!

!classDefinition: #ManifestFirmata category: #Firmata!
ProtoObject subclass: #ManifestFirmata
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Firmata'!
!classDefinition: 'ManifestFirmata class' category: #Firmata!
ManifestFirmata class
	instanceVariableNames: ''!


!Firmata commentStamp: 'GuillermoPolito 3/29/2017 15:53' prior: 0!
I am an implementation of the Firmata protocol for talking to an Arduino board. 

!FirmataConstants commentStamp: 'Richo 9/15/2009 12:00' prior: 0!
See class side. I collect a bunch of constants for the Firmata protocol.!

!ManifestFirmata commentStamp: '<historical>' prior: 0!
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser!

!Firmata methodsFor: 'printing' stamp: 'GitHub 8/1/2017 12:33:41'!
printOn: aStream

!Firmata methodsFor: 'accessing' stamp: 'GitHub 8/1/2017 12:33:41'!
majorVersion

!Firmata methodsFor: 'accessing' stamp: 'GitHub 8/1/2017 12:33:41'!
majorVersion: version1 minorVersion: version2

!Firmata methodsFor: 'accessing' stamp: 'GitHub 8/1/2017 12:33:41'!
minorVersion

!Firmata methodsFor: 'accessing' stamp: 'GitHub 8/1/2017 12:33:41'!
nameSymbol

!Firmata methodsFor: 'accessing' stamp: 'GitHub 8/1/2017 12:33:41'!
port

!Firmata methodsFor: 'accessing' stamp: 'GitHub 8/1/2017 12:33:41'!
version

!Firmata methodsFor: 'stepping' stamp: 'GitHub 8/1/2017 12:33:41'!
startSteppingProcess

!Firmata methodsFor: 'stepping' stamp: 'GitHub 8/1/2017 12:33:41'!
step

!Firmata methodsFor: 'stepping' stamp: 'GitHub 8/1/2017 12:33:41'!
stepTime

!Firmata methodsFor: 'stepping' stamp: 'GitHub 8/1/2017 12:33:41'!
stopSteppingProcess

!Firmata methodsFor: 'receiving' stamp: 'GitHub 8/1/2017 12:33:41'!
parseCommandHeader: inputByte 

!Firmata methodsFor: 'receiving' stamp: 'GitHub 8/1/2017 12:33:41'!
parseData: inputByte 

!Firmata methodsFor: 'receiving' stamp: 'GitHub 8/1/2017 12:33:41'!
parseSysex: inputByte 

!Firmata methodsFor: 'receiving' stamp: 'GitHub 8/1/2017 12:33:41'!
processInput

!Firmata methodsFor: 'testing' stamp: 'GitHub 8/1/2017 12:33:41'!
isFirmataInstalled

!Firmata methodsFor: 'pin modes' stamp: 'GitHub 8/1/2017 12:33:41'!
valueForInputMode

!Firmata methodsFor: 'pin modes' stamp: 'GitHub 8/1/2017 12:33:41'!
valueForOutputMode

!Firmata methodsFor: 'pin modes' stamp: 'GitHub 8/1/2017 12:33:41'!
valueForPwmMode

!Firmata methodsFor: 'pin modes' stamp: 'GitHub 8/1/2017 12:33:41'!
valueForServoMode

!Firmata methodsFor: 'servos' stamp: 'GitHub 8/1/2017 12:33:41'!
attachServoToPin: pinNumber 

!Firmata methodsFor: 'servos' stamp: 'GitHub 8/1/2017 12:33:41'!
detachServoFromPin: pinNumber 

!Firmata methodsFor: 'servos' stamp: 'GitHub 8/1/2017 12:33:41'!
servoConfig: pin minPulse: minPulse maxPulse: maxPulse angle: angle

!Firmata methodsFor: 'servos' stamp: 'GitHub 8/1/2017 12:33:41'!
servoOnPin: pinNumber angle: degrees

!Firmata methodsFor: 'initialize-release' stamp: 'GitHub 8/1/2017 12:33:41'!
initialize

!Firmata methodsFor: 'initialize-release' stamp: 'GitHub 8/1/2017 12:33:41'!
initializeVariables

!Firmata methodsFor: 'digital pins' stamp: 'GitHub 8/1/2017 12:33:41'!
activateDigitalPort: n

!Firmata methodsFor: 'digital pins' stamp: 'GitHub 8/1/2017 12:33:41'!
analogWrite: pin value: value 

!Firmata methodsFor: 'digital pins' stamp: 'GitHub 8/1/2017 12:33:41'!
deactivateDigitalPort: n

!Firmata methodsFor: 'digital pins' stamp: 'GitHub 8/1/2017 12:33:41'!
digitalPin: pinNumber mode: mode

!Firmata methodsFor: 'digital pins' stamp: 'GitHub 8/1/2017 12:33:41'!
digitalPortReport: port1 onOff: onOff

!Firmata methodsFor: 'digital pins' stamp: 'GitHub 8/1/2017 12:33:41'!
digitalRead: pinNumber 

!Firmata methodsFor: 'digital pins' stamp: 'GitHub 8/1/2017 12:33:41'!
digitalWrite: pin value: value 

!Firmata methodsFor: 'digital pins' stamp: 'GitHub 8/1/2017 12:33:41'!
pin: pin mode: mode

!Firmata methodsFor: 'digital pins' stamp: 'GitHub 8/1/2017 12:33:41'!
setDigitalInputs: portNumber data: portData 

!Firmata methodsFor: 'error control' stamp: 'GitHub 8/1/2017 12:33:41'!
controlConnection

!Firmata methodsFor: 'error control' stamp: 'GitHub 8/1/2017 12:33:41'!
controlFirmataInstallation

!Firmata methodsFor: 'connection' stamp: 'GitHub 8/1/2017 12:33:41'!
connectOnPort: portName baudRate: aNumber

!Firmata methodsFor: 'connection' stamp: 'GitHub 8/1/2017 12:33:41'!
disconnect

!Firmata methodsFor: 'connection' stamp: 'GitHub 8/1/2017 12:33:41'!
isConnected

!Firmata methodsFor: 'other commands' stamp: 'GitHub 8/1/2017 12:33:41'!
endSysex

!Firmata methodsFor: 'other commands' stamp: 'GitHub 8/1/2017 12:33:41'!
queryFirmware

!Firmata methodsFor: 'other commands' stamp: 'GitHub 8/1/2017 12:33:41'!
queryVersion

!Firmata methodsFor: 'other commands' stamp: 'GitHub 8/1/2017 12:33:41'!
startSysex

!Firmata methodsFor: 'analog pins' stamp: 'GitHub 8/1/2017 12:33:41'!
activateAnalogPin: pinNumber 

!Firmata methodsFor: 'analog pins' stamp: 'GitHub 8/1/2017 12:33:41'!
analogPinReport: pin onOff: onOff 

!Firmata methodsFor: 'analog pins' stamp: 'GitHub 8/1/2017 12:33:41'!
analogRead: pinNumber

!Firmata methodsFor: 'analog pins' stamp: 'GitHub 8/1/2017 12:33:41'!
deactivateAnalogPin: pinNumber 

!Firmata methodsFor: 'analog pins' stamp: 'GitHub 8/1/2017 12:33:41'!
setAnalogInput: pin value: value

!Firmata class methodsFor: 'instance creation' stamp: 'GitHub 8/1/2017 12:33:41'!
onPort: portNumber baudRate: aNumber

!FirmataConstants class methodsFor: 'others' stamp: 'GitHub 8/1/2017 12:33:41'!
maxDataBytes

!FirmataConstants class methodsFor: 'message commands' stamp: 'GitHub 8/1/2017 12:33:41'!
analogMessage

!FirmataConstants class methodsFor: 'message commands' stamp: 'GitHub 8/1/2017 12:33:41'!
digitalMessage

!FirmataConstants class methodsFor: 'message commands' stamp: 'GitHub 8/1/2017 12:33:41'!
endSysex

!FirmataConstants class methodsFor: 'message commands' stamp: 'GitHub 8/1/2017 12:33:41'!
reportAnalog

!FirmataConstants class methodsFor: 'message commands' stamp: 'GitHub 8/1/2017 12:33:41'!
reportDigital

!FirmataConstants class methodsFor: 'message commands' stamp: 'GitHub 8/1/2017 12:33:41'!
reportVersion

!FirmataConstants class methodsFor: 'message commands' stamp: 'GitHub 8/1/2017 12:33:41'!
setPinMode

!FirmataConstants class methodsFor: 'message commands' stamp: 'GitHub 8/1/2017 12:33:41'!
startSysex

!FirmataConstants class methodsFor: 'message commands' stamp: 'GitHub 8/1/2017 12:33:41'!
systemReset

!FirmataConstants class methodsFor: 'version numbers' stamp: 'GitHub 8/1/2017 12:33:41'!
firmataMajorVersion

!FirmataConstants class methodsFor: 'version numbers' stamp: 'GitHub 8/1/2017 12:33:41'!
firmataMinorVersion

!FirmataConstants class methodsFor: 'version numbers' stamp: 'GitHub 8/1/2017 12:33:41'!
versionBlickPin

!FirmataConstants class methodsFor: 'pin modes' stamp: 'GitHub 8/1/2017 12:33:41'!
pinModeAnalog

!FirmataConstants class methodsFor: 'pin modes' stamp: 'GitHub 8/1/2017 12:33:41'!
pinModeInput

!FirmataConstants class methodsFor: 'pin modes' stamp: 'GitHub 8/1/2017 12:33:41'!
pinModeOutput

!FirmataConstants class methodsFor: 'pin modes' stamp: 'GitHub 8/1/2017 12:33:41'!
pinModePwm

!FirmataConstants class methodsFor: 'pin modes' stamp: 'GitHub 8/1/2017 12:33:41'!
pinModeServo 

!FirmataConstants class methodsFor: 'pin modes' stamp: 'GitHub 8/1/2017 12:33:41'!
pinModeUnavailable

!FirmataConstants class methodsFor: 'extended command set using Sysex' stamp: 'GitHub 8/1/2017 12:33:41'!
firmataString

!FirmataConstants class methodsFor: 'extended command set using Sysex' stamp: 'GitHub 8/1/2017 12:33:41'!
reportFirmware

!FirmataConstants class methodsFor: 'extended command set using Sysex' stamp: 'GitHub 8/1/2017 12:33:41'!
servoConfig

!FirmataConstants class methodsFor: 'extended command set using Sysex' stamp: 'GitHub 8/1/2017 12:33:41'!
sysexNonRealtime

!FirmataConstants class methodsFor: 'extended command set using Sysex' stamp: 'GitHub 8/1/2017 12:33:41'!
sysexRealtime