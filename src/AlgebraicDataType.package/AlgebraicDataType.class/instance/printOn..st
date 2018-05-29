printing
printOn: aStream
	aStream nextPut: $(.
	aStream nextPutAll: ((self unapply collect: [:token | token printString])
		reduce: [:acc :each | acc , ' ', each]).
	aStream nextPut: $).