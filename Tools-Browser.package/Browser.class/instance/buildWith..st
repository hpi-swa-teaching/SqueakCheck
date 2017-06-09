toolbuilder
buildWith: builder
	"Create the ui for the browser"
	| windowSpec max |
	max := self wantsOptionalButtons ifTrue:[0.42] ifFalse:[0.5].
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 0.25@max) -> [self buildSystemCategoryListWith: builder].
		(self classListFrame: max fromLeft: 0.25 width: 0.25) -> [self buildClassListWith: builder].
		(self switchesFrame: max fromLeft: 0.25 width: 0.25) -> [self buildSwitchesWith: builder].
		(0.5@0 corner: 0.75@max) -> [self buildMessageCategoryListWith: builder].
		(0.75@0 corner: 1@max) -> [self buildMessageListWith: builder].
		(0@max corner: 1@1) -> [self buildCodePaneWith: builder].
	}.
	^builder build: windowSpec