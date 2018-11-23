Class {
	#name : #ObjectCentricDemo,
	#superclass : #Object,
	#category : #ObjectCentricDemo
}

{ #category : #'as yet unclassified' }
ObjectCentricDemo class >> launchDemo [
	<script>
	| playgroundString |
	playgroundString :=
'deck := Deck newWith54Cards shuffle.
randomCard := deck randomCard.
deck continuouslyPrintCardsToTranscript.
Deck stopAllPrintingProcesses.'.
	GTPlayground openContents: playgroundString.
	ThreadSafeTranscript open.
]
