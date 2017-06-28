accessing
generator: aDataGenerator
	"Most of the time you won't need this method. Its purpose is to allow you to selectively override the default generator (an instance of whatever class #generatorClass returns) in order to test specific behaviours. Use carefully."
	generator := aDataGenerator.