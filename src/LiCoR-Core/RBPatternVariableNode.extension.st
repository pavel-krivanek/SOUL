Extension { #name : #RBPatternVariableNode }

{ #category : #'*LiCoR-Core' }
RBPatternVariableNode >> unifyWith: aTerm inEnv: anEnv myIndex: myIndex hisIndex: hisIndex inSource: aBool [
	"GENERATED BY UNIFICATION EDITOR - DO NOT EDIT MANUALLY !!"

	
	^aTerm
		unifyWithRBPatternVariableNode: self
		inEnv: anEnv
		myIndex: hisIndex
		hisIndex: myIndex
		inSource: aBool not
]

{ #category : #'*LiCoR-Core' }
RBPatternVariableNode >> unifyWithRBPatternVariableNode: aTerm inEnv: anEnv myIndex: myIndex hisIndex: hisIndex inSource: aBool [
	
	^self = aTerm
]
