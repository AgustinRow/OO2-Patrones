Class {
	#name : #ToDoItem,
	#superclass : #Object,
	#instVars : [
		'name',
		'state',
		'timestan'
	],
	#category : #'OO2-TP5-ToDoList-Model'
}

{ #category : #accessing }
ToDoItem class >> name: aName [
	^ self new
		name: aName;
		state: (Pending new);
		yourself
]

{ #category : #actions }
ToDoItem >> addComment: aComment [
state addComment: aComment 
]

{ #category : #actions }
ToDoItem >> finish [ 
state finish: self
]

{ #category : #initialization }
ToDoItem >> initializeTime [
timestan := DateAndTime now.
]

{ #category : #actions }
ToDoItem >> myDuration [
	^ (timestan asDuration - Time now asDuration)
]

{ #category : #accessing }
ToDoItem >> name: aName [
name:= aName 
]

{ #category : #accessing }
ToDoItem >> start [
state start: self
]

{ #category : #accessing }
ToDoItem >> state: aState [
state:= aState 
]

{ #category : #'system-api' }
ToDoItem >> stopTimer [
timestan := self myDuration.
]

{ #category : #accessing }
ToDoItem >> timestan [ 
^timestan 
]

{ #category : #actions }
ToDoItem >> tooglePause [
state tooglePause: self
]

{ #category : #actions }
ToDoItem >> workedTime [
^(state workedTime: self)
]
