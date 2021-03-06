Class {
	#name : #SoulRBPatternVariableNode,
	#superclass : #RBPatternVariableNode,
	#category : 'SOUL-Parsers'
}

{ #category : #'initialize-release' }
SoulRBPatternVariableNode >> initializePatternVariables [
	
	| name |
	name := self name.
	isAnything := isList := isLiteral := isStatement := recurseInto := false.
	2
		to: name size
		do:
			[:i | 
			| character |
			character := name at: i.
			character == self listCharacter
				ifTrue: [isAnything := isList := true]
				ifFalse:
					[character == self literalCharacter
						ifTrue: [isLiteral := true]
						ifFalse:
							[character == self statementCharacter
								ifTrue: [isStatement := true]
								ifFalse:
									[character == self recurseIntoCharacter
										ifTrue: [recurseInto := true]
										ifFalse: [^self]]]]]
]
