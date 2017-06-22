printing
print: aString
	output nextPutAll: aString.
	(output isKindOf: TranscriptStream) ifTrue: [output endEntry].