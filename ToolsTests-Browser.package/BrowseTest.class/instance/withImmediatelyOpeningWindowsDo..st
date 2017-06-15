private
withImmediatelyOpeningWindowsDo: aBlock
	"Turn off any preferences that defer to the user to open a window."
	| openToolsAttachedToMouseCursor |
	(UIManager default respondsTo: #openToolsAttachedToMouseCursor:) ifFalse:
		[^aBlock value].

	openToolsAttachedToMouseCursor := UIManager default openToolsAttachedToMouseCursor.
	UIManager default openToolsAttachedToMouseCursor: false.
	^aBlock ensure:
		[UIManager default openToolsAttachedToMouseCursor: openToolsAttachedToMouseCursor]