Class {
	#name : #ToDoList,
	#superclass : #Object,
	#instVars : [
		'name',
		'state',
		'timestan'
	],
	#category : #'OO2-TP5-ToDoList-Model'
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

{ #category : #initialization }
ToDoList >> initializeTime [
timestan := DateAndTime now.
]

{ #category : #actions }
ToDoList >> myDuration [
	^ (timestan asDuration - Time now asDuration)
]

{ #category : #accessing }
ToDoList >> name: aName [
name:= aName 
]

{ #category : #accessing }
ToDoList >> start [
state start: self
]

{ #category : #accessing }
ToDoList >> state: aState [
state:= aState 
]

{ #category : #'system-api' }
ToDoList >> stopTimer [
timestan := self myDuration.
]

{ #category : #accessing }
ToDoList >> timestan [ 
^timestan 
]

{ #category : #actions }
ToDoList >> tooglePause [
state tooglePause: self
]

{ #category : #actions }
ToDoList >> workedTime [
^(state workedTime: self)
]
