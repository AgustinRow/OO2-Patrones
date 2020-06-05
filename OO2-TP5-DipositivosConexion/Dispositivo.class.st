Class {
	#name : #Dispositivo,
	#superclass : #Object,
	#instVars : [
		'connection',
		'ringer',
		'display',
		'crcCalculator'
	],
	#category : #'OO2-TP5-DipositivosConexion-Model'
}

{ #category : #configuration }
Dispositivo >> conectarCon: unaConexion [
self connection: unaConexion.
ringer ring.
display showBanner: unaConexion pict. 
]

{ #category : #configuration }
Dispositivo >> configurarCRC: unCRCcalculator [
crcCalculator := unCRCcalculator 
]

{ #category : #accessing }
Dispositivo >> connection [ 
^connection
]

{ #category : #accessing }
Dispositivo >> connection: unaConexion [ 

connection := unaConexion 
]

{ #category : #accessing }
Dispositivo >> crcCalculator [
^crcCalculator 
]

{ #category : #initialize }
Dispositivo >> initialize [ 
ringer:= Ringer new.
display := DisplayConnection  new.
]

{ #category : #accessing }
Dispositivo >> send: datos [
|crc|
crc:= self crcCalculator crcFor: datos.
self connection send: datos data: crc  
]
