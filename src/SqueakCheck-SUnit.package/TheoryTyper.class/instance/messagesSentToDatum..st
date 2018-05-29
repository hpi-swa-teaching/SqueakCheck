typing
messagesSentToDatum: aUnaryCompiledMethod
	"Answer a pair of Sets of all the message selectors sent by this method to its argument. The first Set contains messages sent to the argument, and the second contains messages sent to the argument's class."
	| collector |
	collector := SenderToArgCollector new
		visitMethodNode: (Decompiler new
			decompile: aUnaryCompiledMethod selector
			in: aUnaryCompiledMethod methodClass).

	^ {collector selectors. collector classSelectors}.