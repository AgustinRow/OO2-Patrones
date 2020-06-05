Class {
	#name : #'CRC32_Calculator',
	#superclass : #CrcCalculator,
	#category : #'OO2-TP5-DipositivosConexion-Model'
}

{ #category : #accessing }
CRC32_Calculator >> crcFor: aString [ 
^CRC crc32FromCollection: aString
]
