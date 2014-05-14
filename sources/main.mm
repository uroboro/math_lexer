#include <stdlib.h>
#include <stdio.h>
#include <math.h>

typedef enum {
	kTokenTypeNumber,
	kTokenTypeOperator,
	kTokenTypeComparator,
	kTokenTypeSymbol,
	kTokenTypeDelimiter
} MLTokenType;

typedef enum {
	kTokenSubtypeNumberInteger,
	kTokenSubtypeNumberFloat,

	kTokenSubtypeOperatorPlus, //+
	kTokenSubtypeOperatorMinus, //-
	kTokenSubtypeOperatorMultiply, //*
	kTokenSubtypeOperatorDivide, ///
	kTokenSubtypeOperatorPower, //^
	kTokenSubtypeOperatorMod, //%
	kTokenSubtypeOperatorModulo, //||
	kTokenSubTypeOperatorNot, //!

	kTokenSubTypeComparatorLess, //<
	kTokenSubTypeComparatorLessOrEqual, //<=
	kTokenSubTypeComparatorEqual, //==
	kTokenSubTypeComparatorNotEqual, //!=
	kTokenSubTypeComparatorGreaterOrEqual, //>=
	kTokenSubTypeComparatorGreater, //>

	kTokenSubTypeDelimiterSpace,
	kTokenSubTypeDelimiterParenthesis, //()
	kTokenSubTypeDelimiterBracket, //[]
	kTokenSubTypeDelimiterBraces, //{}

	kTokenSubTypeEnd
} MLTokenSubType;

typedef struct MLToken {
	char *string;
	MLTokenType type;
	MLTokenSubType subtype;
	char *symbol;
} MLToken;

typedef enum {
	kExpressionTypeValue,
	kExpressionTypeAssignment,
	kExpressionTypeComparison
} MLExpressionType;

typedef struct {
	MLToken *tokens;
	MLExpressionType type;
} MLExpression;

char MLTokenRequiresPair(MLToken *token);
char *MLTokenString


MLToken *parse(char *string);
MLComplex *eval(MLExpression *exp);

int main(int argc, char **argv, char **envp) {
	return 0;
}
