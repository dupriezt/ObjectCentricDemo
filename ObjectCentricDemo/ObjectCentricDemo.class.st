"
- Deactivate GT inspector (Pharo>Settings>Tools)
- load with iceberg:
	https://github.com/ClotildeToullec/Collectors
	https://github.com/guillep/avatar
	https://github.com/StevenCostiou/ObjectCentricDebugger
- Open Transcript
- Open Playground with:
		deck := Deck newWith54Cards shuffle.
		deck continuouslyPrintCardsToTranscript.
		randomCard := deck randomCard.
		Deck stopAllPrintingProcesses.
- Run first two lines to see cards being printed to the Transcript
- Inspect third line to pick a random card
- Execute `self breakOnCall` in the inspector to put an OCD breakpoint that will trigger when any method of this particular card object is called
- As the cards are examined, a debugger will open on the one that was instrumented before

"
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
