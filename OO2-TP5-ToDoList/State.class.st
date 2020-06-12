Class {
	#name : #State,
	#superclass : #Object,
	#instVars : [
		'comment'
	],
	#category : #'OO2-TP5-ToDoList-Model'
}

{ #category : #adding }
State >> addComment: aComment [
comment:= aComment.
]

{ #category : #accessing }
State >> finish: aToDoList [ 
]

{ #category : #accessing }
State >> start: aToDoList [ 

]

{ #category : #accessing }
State >> tooglePause: aToDoList [  
self error: 'El objeto ToDoItem no se encuentra en pause o inProgress'
]

{ #category : #accessing }
State >> workedTime: aToDoList [
^aToDoList myDuration 
]
