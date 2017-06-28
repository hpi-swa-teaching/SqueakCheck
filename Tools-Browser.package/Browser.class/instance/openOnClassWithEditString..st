initialize-release
openOnClassWithEditString: aString
	"Create a pluggable version of all the views for a Browser, including views and controllers."
	"Example:
		Browser newOnClass: Browser.
	"
	| builder max |
	builder := ToolBuilder default.
	max := self wantsOptionalButtons ifTrue:[0.32] ifFalse:[0.4].
	^self buildWindowWith: builder specs: {
		(self topConstantHeightFrame: self buttonHeight fromLeft: 0 width: 0.5) -> [self buildClassListSingletonWith: builder].
		(self frameOffsetFromTop: self buttonHeight fromLeft: 0 width: 0.5 bottomFraction: max) -> [self buildMessageCategoryListWith: builder].
		(self topConstantHeightFrame: self buttonHeight fromLeft: 0.5 width: 0.5) -> [self buildSwitchesWith: builder].
		(self frameOffsetFromTop: self buttonHeight fromLeft: 0.5 width: 0.5 bottomFraction: max) -> [self buildMessageListWith: builder].
		(0@max corner: 1@1) -> [self buildCodePaneWith: builder].
	}
