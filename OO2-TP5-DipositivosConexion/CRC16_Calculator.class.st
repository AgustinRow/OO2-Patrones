Class {
	#name : #'CRC16_Calculator',
	#superclass : #CrcCalculator,
	#category : #'OO2-TP5-DipositivosConexion-Model'
}

{ #category : #accessing }
CRC16_Calculator >> crcFor: aString [ 
^CRC crc16FromCollection: aString.
]
