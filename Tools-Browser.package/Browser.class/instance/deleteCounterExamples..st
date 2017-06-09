SWT014-Browsererweiterung
deleteCounterExamples: aCompiledMethod
	
	(self counterExamples: aCompiledMethod) do: [:each | aCompiledMethod methodClass removeSelector: (each selector)].
	self changed: #messageList.