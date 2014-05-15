#include <stdlib.h>
#include <stdio.h>
#include <math.h>

typedef enum MLTokenType {
	kTokenTypeNumber,
	kTokenTypeOperator,
	kTokenTypeComparator,
	kTokenTypeAssignment,
	kTokenTypeSymbol,
	kTokenTypeDelimiter,
	kTokenTypeEnd							// not really used for anything :P
} MLTokenType;

typedef enum MLTokenSubType {
	kTokenSubtypeNumberInteger,				//long long
	kTokenSubtypeNumberFloat,				//double

	kTokenSubtypeOperatorPlus,				// +
	kTokenSubtypeOperatorMinus,				// -
	kTokenSubtypeOperatorMultiply,			// *
	kTokenSubtypeOperatorDivide,			// /
	kTokenSubtypeOperatorMod,				// %
	//kTokenSubtypeOperatorModulo,			// |x| use symbol instead?
	kTokenSubTypeOperatorNOT,				// !
	kTokenSubTypeOperatorOR,				// |
	kTokenSubTypeOperatorAND,				// &
	kTokenSubtypeOperatorXOR,				// ^
	kTokenSubTypeOperatorTernary,			// ?:

	kTokenSubTypeComparatorLess,			// <
	kTokenSubTypeComparatorLessOrEqual,		// <=
	kTokenSubTypeComparatorEqual,			// ==
	kTokenSubTypeComparatorNotEqual,		// !=
	kTokenSubTypeComparatorGreaterOrEqual,	// >=
	kTokenSubTypeComparatorGreater,			// >
	kTokenSubTypeComparatorOR,				// ||
	kTokenSubTypeComparatorAND,				// &&

	kTokenSubTypeAssignment,				// =
	kTokenSubTypeAssignmentAndAdd,			// +=
	kTokenSubTypeAssignmentAndSubtract,		// -=
	kTokenSubTypeAssignmentAndMultiply,		// *=
	kTokenSubTypeAssignmentAndDivide,		// /=
	kTokenSubTypeAssignmentAndMod,			// %=
	kTokenSubTypeAssignmentAndOR,			// |=
	kTokenSubTypeAssignmentAndAND,			// &=
	kTokenSubTypeAssignmentAndXOR,			// ^=

	kTokenSubTypeDelimiterSpace,
	kTokenSubTypeDelimiterParenthesis,		// ()
	kTokenSubTypeDelimiterBracket,			// []
	kTokenSubTypeDelimiterBraces,			// {}
	kTokenSubTypeDelimiterDot,				// .
	kTokenSubTypeDelimiterComma,			// ,
	kTokenSubTypeDelimiterColon,			// :
	kTokenSubTypeDelimiterSemiColon,		// ;
	kTokenSubTypeDelimiterUnderscore,		// _
	kTokenSubTypeDelimiterTilde,			// ~
	kTokenSubTypeDelimiterAt,				// @
	kTokenSubTypeDelimiterHash,				// #
	kTokenSubTypeDelimiterDollar,			// $

	kTokenSubTypeEnd						// not really used for anything :P
} MLTokenSubType;

typedef struct MLToken {
	char *string;
	MLTokenType type;
	MLTokenSubType subtype;
	char *symbol;
} MLToken;

typedef enum MLExpressionType {
	kExpressionTypeValue,
	kExpressionTypeAssignment,
	kExpressionTypeComparison
} MLExpressionType;

typedef struct MLExpression {
	struct MLExpression *expressions;
	MLToken *tokens;
	MLExpressionType type;
} MLExpression;

typedef struct MLComplex {
	double real;
	double imaginary;
} MLComplex;

char MLTokenRequiresPair(MLToken *token);
char *MLTokenString(MLToken *token);


MLExpression *parse(char *string);
MLComplex *eval(MLExpression *exp);

int main(int argc, char **argv, char **envp) {
	return 0;
}
