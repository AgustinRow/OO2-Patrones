Class {
	#name : #TestTopografia,
	#superclass : #TestCase,
	#instVars : [
		'agua',
		'tierra',
		'compuesto'
	],
	#category : #'OO2-TP4-Topografia-Test'
}

{ #category : #'set-up' }
TestTopografia >> setUp [ 
agua:= Agua new.
tierra:= Tierra new.
]

{ #category : #tests }
TestTopografia >> testCalcularProporcionTopografiasCompuestas [
|otraTopografia|
otraTopografia := TopografiaCompuesta new: agua with: agua  with: agua  and: tierra. 
compuesto:= TopografiaCompuesta new: agua with: agua  with: agua  and: otraTopografia. 

self assert: compuesto calcularProporcionAgua equals: 15/16



]

{ #category : #tests }
TestTopografia >> testIgualdadTopografiaCompuesta [
|otraTopografia|

otraTopografia := TopografiaCompuesta new: agua with: agua  with: agua  and: tierra. 
compuesto:= TopografiaCompuesta new: agua with: agua  with: agua  and: tierra. 

self assert: compuesto equals: otraTopografia. 

compuesto:= TopografiaCompuesta new: agua with: agua  with: agua  and: otraTopografia. 

self deny: compuesto  equals: otraTopografia 
]

{ #category : #tests }
TestTopografia >> testIgualdadTopografiaSimple [
	| agua1 |
	agua1 := Agua new.
	self assert: agua equals: agua1.
	self assert: tierra equals: tierra.
	self deny: agua equals: tierra
]

{ #category : #tests }
TestTopografia >> testTopografiaCompuestaConDistintaDistribucionPeroIgualComposicion [

|otraTopografia|
otraTopografia := TopografiaCompuesta new: agua with: agua  with: agua  and: tierra. 
compuesto:= TopografiaCompuesta new: agua with: agua  with: tierra  and: agua . 

self deny: compuesto equals: otraTopografia .
]

{ #category : #tests }
TestTopografia >> testTopografiaMitadCompuest [
compuesto:= TopografiaCompuesta new: agua with: tierra  with: agua  and: tierra. 
self assert: compuesto calcularProporcionAgua equals: 1/2
]

{ #category : #tests }
TestTopografia >> testTopografiaTresCuartoCompuest [
compuesto:= TopografiaCompuesta new: agua with: agua  with: agua  and: tierra. 
self assert: compuesto calcularProporcionAgua equals: 3/4
]

{ #category : #tests }
TestTopografia >> testTopografiaUnCuartoCompuest [
compuesto:= TopografiaCompuesta new: agua with: tierra  with: tierra  and: tierra. 
self assert: compuesto calcularProporcionAgua equals: 1/4
]
