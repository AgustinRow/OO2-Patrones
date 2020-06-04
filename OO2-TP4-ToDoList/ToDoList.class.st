Class {
	#name : #ToDoList,
	#superclass : #Object,
	#instVars : [
		'name',
		'state',
		'timestan'
	],
	#category : #'OO2-TP4-ToDoList-Model'
}

{ #category : #accessing }
ToDoList class >> name: aName [
	^ self new
		name: aName;
		state: (Pending new);
		yourself
]

{ #category : #actions }
ToDoList >> addComment: aComment [
state addComment: aComment 
]

{ #category : #actions }
ToDoList >> finish [ 
state finish: self
]

{ #category : #actions }
ToDoList >> myDuration [
^timestan asDuration - Time now asDuration.
]

{ #category : #accessing }
ToDoList >> name: aName [
name:= aName 
]

{ #category : #initialization }
ToDoList >> setTime [
timestan := DateAndTime now.
]

{ #category : #accessing }
ToDoList >> start [
state start: self
]

{ #category : #accessing }
ToDoList >> state: aState [
state:= aState 
]

{ #category : #actions }
ToDoList >> tooglePause [
state tooglePause: self
]

{ #category : #actions }
ToDoList >> workedTime [
^(state workedTime: self)
]
