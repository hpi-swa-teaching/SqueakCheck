toolbuilder
openSystemCatEditString: aString
	"Create a pluggable version of all the views for a Browser, including views and controllers.  The top list view is of the currently selected system class category--a single item list."
	"Example:
		Browser new browseAllClasses.
	"
	| builder catPaneHeight max |
	catPaneHeight := Preferences standardListFont height + 5 "top margin/border" + 5 "bottom margin/border".
	builder := ToolBuilder default.
	max := self wantsOptionalButtons ifTrue:[0.32] ifFalse:[0.4].
	^self buildWindowWith: builder specs: {
		(self classListFrame: max fromTop: 0 fromLeft: 0 width: 0.333) -> [self buildClassListWith: builder].
		(self switchesFrame: max fromLeft: 0 width: 0.333) -> [self buildSwitchesWith: builder].
		(LayoutFrame fractions: (0.333@0 corner: 0.666@max) offsets: (0@0 corner: 0@0)) -> [self buildMessageCategoryListWith: builder].
		(LayoutFrame fractions: (0.666@0 corner: 1@max) offsets: (0@0 corner: 0@0)) -> [self buildMessageListWith: builder].
		(0@max corner: 1@1) -> [self buildCodePaneWith: builder].
	}