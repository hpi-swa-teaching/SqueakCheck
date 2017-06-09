instance creation
openBrowserView: aBrowserView label: aString 
	"Schedule aBrowserView, labelling the view aString."
	
	(aBrowserView isKindOf: ToolBuilderSpec)
		ifTrue:[
			(self canUseMultiWindowBrowsers
				 and: [self useMultiWindowBrowsers])
					ifTrue: [aBrowserView multiWindowStyle: #labelButton].
			aString
				ifNil: [ToolBuilder open: aBrowserView]
				ifNotNil: [ToolBuilder open: aBrowserView label: aString]]
		ifFalse:[
			aBrowserView isMorph
				ifTrue: [
					aString ifNotNil: [aBrowserView setLabel: aString].
					aBrowserView openInWorld]
				ifFalse: [
					aString ifNotNil: [aBrowserView label: aString].
					aBrowserView minimumSize: 300 @ 200.
					aBrowserView subViews do: [:each | each controller].
					aBrowserView controller open]].

	^ aBrowserView model
