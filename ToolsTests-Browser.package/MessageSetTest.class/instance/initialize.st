initialize-release
initialize
	super initialize.
	
	"Contains the triggers sent by the model during its updates."
	updates := OrderedCollection new.