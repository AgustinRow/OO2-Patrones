Class {
	#name : #Authentication,
	#superclass : #Object,
	#instVars : [
		'authenticated'
	],
	#category : #'OO2-TP6-Proxy'
}

{ #category : #accessing }
Authentication >> authenticated [ 
^authenticated 
]

{ #category : #'as yet unclassified' }
Authentication >> changeAcces [
authenticated := authenticated not.
]

{ #category : #initialize }
Authentication >> initialize [ 
authenticated  := false.
]
