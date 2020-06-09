Class {
	#name : #UserAunthentication,
	#superclass : #Object,
	#instVars : [
		'authenticated'
	],
	#category : #'OO2-TP6-Proxy'
}

{ #category : #accessing }
UserAunthentication >> authenticated [ 
^authenticated 
]

{ #category : #'as yet unclassified' }
UserAunthentication >> changeAcces [
authenticated := authenticated not.
]

{ #category : #initialize }
UserAunthentication >> initialize [ 
authenticated  := false.
]
