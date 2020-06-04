Class {
	#name : #JSONTest,
	#superclass : #TestCase,
	#instVars : [
		'miBiblioteca',
		'arya',
		'tyron'
	],
	#category : #'OO2-TP4-Biblioteca-Test'
}

{ #category : #running }
JSONTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

miBiblioteca:= Biblioteca new: NeoExporter  new.
arya:= Socio nombre:'Arya Stark' email:'needle@stark.com' legajo: '5234/5'.
tyron:= Socio nombre:'Tyron Lannister' email:'tyron@thelannisters.com' legajo:'2345/2'.
miBiblioteca agregarSocio: arya.
miBiblioteca agregarSocio: tyron.

]

{ #category : #running }
JSONTest >> testJSONVoorhersExporter [
	self
		assert: (STON fromString: miBiblioteca exportarSocios)
		equals: (STON fromString:
'[
	{
		"nombre" : "Arya Stark",
		"email" : "needle@stark.com",
		"legajo" : "5234/5"
	},
	{
		"nombre" : "Tyron Lannister",
		"email" : "tyron@thelannisters.com",
		"legajo" : "2345/2"
	}
]')
]
