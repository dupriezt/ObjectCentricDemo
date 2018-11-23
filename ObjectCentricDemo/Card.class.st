Class {
	#name : #Card,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #ObjectCentricDemo
}

{ #category : #'instance creation' }
Card class >> newNamed: aString [
	^ self new name: aString.
	
]

{ #category : #accessing }
Card >> name [
	^ name
]

{ #category : #accessing }
Card >> name: anObject [
	name := anObject
]

{ #category : #printing }
Card >> print [
	^ 'hello'
]

{ #category : #printing }
Card >> printOn: aStream [
	aStream
		nextPutAll: self name.
]
