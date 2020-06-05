Class {
	#name : #TestDispositivoConexion,
	#superclass : #TestCase,
	#instVars : [
		'conexion',
		'crc',
		'dispositivo'
	],
	#category : #'OO2-TP5-DipositivosConexion-Test'
}

{ #category : #running }
TestDispositivoConexion >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
dispositivo := Dispositivo new. 
dispositivo conectarCon: WiFiConn new.
dispositivo configurarCRC: CRC16_Calculator new. 
]

{ #category : #tests }
TestDispositivoConexion >> testConenctarCon [

]

{ #category : #tests }
TestDispositivoConexion >> testConfigurarCRC [

dispositivo configurarCRC: CRC16_Calculator new.
dispositivo conectarCon:  WiFiConn new. 

dispositivo configurarCRC: CRC32_Calculator new.
]

{ #category : #tests }
TestDispositivoConexion >> testSend [ 


]
