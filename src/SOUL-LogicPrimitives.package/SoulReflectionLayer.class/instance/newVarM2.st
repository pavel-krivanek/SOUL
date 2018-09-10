terms
newVarM2

"Create a new variable on the stack at runtime. This is useful if a new variable needs to be created that was not there at compile time"

newVar(?name,?x) if 
	var(?x),getEnv(?env,?),envLookup(?x,?xpointer),[| startIndex variable |
startIndex := ?env startUnify: 1.
variable := HiddenVariable name: ?name , SoulFactory uniqueCounter asString.
variable setAddress: 0.
variable
	unifyWith: ?xpointer term
	inEnv: ?env
	myIndex: startIndex
	hisIndex: ?xpointer envIndex
	inSource: true.
true]