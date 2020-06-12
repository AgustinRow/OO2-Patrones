Class {
	#name : #TestCalculoSueldos,
	#superclass : #TestCase,
	#instVars : [
		'temporario',
		'pasante',
		'planta'
	],
	#category : #'OO2-TP4-CalculoSueldos-Test'
}

{ #category : #'set-up' }
TestCalculoSueldos >> setUp [
temporario:= Temporario nombre: 'Agustin' fechaIngreso: '2015-11-5' esCasado: true cantHijos: 2 cantHoras: 20.
pasante:= Pasante nombre: 'Juan' fechaIngreso: '2020-3-2' examenesRendidos: 2.
planta:= Planta nombre: 'Pedro' fechaIngreso: '2010-1-1' esCasado: false  cantHijos: 3.
 
]

{ #category : #testing }
TestCalculoSueldos >> testSueldo [

self assert: temporario calcularSueldoSinAporte equals: 4319.
self assert: pasante calcularSueldoSinAporte equals: 1930.
self assert: planta calcularSueldoSinAporte equals: 3845.

self assert: temporario sueldo equals: 4189.43.
self assert: pasante sueldo equals: 1910.7.
self assert: planta sueldo equals: 3768.1.
]
