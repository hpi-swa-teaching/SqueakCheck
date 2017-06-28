initialize-release
openMessageCatEditString: aString
        "Create a pluggable version of the views for a Browser that just shows one message category."
	"Example: 
		Preferences browseThemes.
	"
 	| builder max |
	aString ifNotNil:[
		"Note: The views aren't actually built yet after we've called buildWindowWith:.
		Since we can't send changed: #editString before the views have been built
		we just shoot the #changed: message into the #future. This is the easiest
		way to solve this issue locally."
		self future changed: #editString with: aString].
	builder := ToolBuilder default.
	max := self wantsOptionalButtons ifTrue:[0.32] ifFalse:[0.4].
	^self buildWindowWith: builder specs: {
		(0@0 corner: 1.0@0.08) -> [self buildMessageListCatSingletonWith: builder].
		(0.0@0.08 corner: 1.0@max) -> [self buildMessageListWith: builder].
		(0@max corner: 1@1) -> [self buildCodePaneWith: builder].
	}.