// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-02-25
// @uri@	news:igi5d3-ug8.ln1@birke.kuehne.cn

// the id is an extraction from slang-1.4.9-r1/slang.txt

module dstress.run.l.large_id_01_A;

int AGuidetotheSLangLanguageJohnEDavisdavisspacemiteduMar232003TableofContentsPreface1ABriefHistoryofSLang2Acknowledgements2Introduction3LanguageFeatures4DataTypesandOperators5StatementsandFunctions6ErrorHandling7RunTimeLibrary8InputOutput9ObtainingSLang9OverviewoftheLanguage10VariablesandFunctions11Strings12ReferencingandDereferencing13Arrays14StructuresandUserDefinedTypes15Namespaces15DataTypesandLiteralConstants16PredefinedDataTypes161Integers162FloatingPointNumbers163ComplexNumbers164Strings165NullType166RefType167ArrayTypeandStructType168DataTypeTypeType17TypecastingConvertingfromoneTypetoAnother17Identifiers17Variables17Operators18UnaryOperators19BinaryOperators191ArithmeticOperators192RelationalOperators193BooleanOperators194BitwiseOperators195Namespaceoperator196OperatorPrecedence197BinaryOperatorsandFunctionsReturningMultipleValues20MixingIntegerandFloatingPointArithmetic21ShortCircuitBooleanEvaluation21Statements22VariableDeclarationStatements23AssignmentStatements24ConditionalandLoopingStatements241ConditionalForms2411if2412ifelse2413if2414orelseandelse2415switch242LoopingForms2421while2422dowhile2423for2424loop2425for2426forever2427foreach25breakreturncontinue25Functions26DeclaringFunctions27ParameterPassingMechanism28ReferencingVariables29FunctionswithaVariableNumberofArguments30ReturningValues31MultipleAssignmentStatement32ExitBlocks32NameSpaces32Arrays33CreatingArrays331RangeArrays332Creatingarraysviathedereferenceoperator34ReshapingArrays35IndexingArrays36ArraysandVariables37UsingArraysinComputations37AssociativeArrays37StructuresandUserDefinedTypes38DefiningaStructure39AccessingtheFieldsofaStructure40LinkedLists41DefiningNewTypes41ErrorHandling42ErrorBlocks43ClearingErrors43LoadingFilesevalfileandautoload43FileInputOutput44InputOutputviastdio441StdioOverview442StdioExamples45POSIXIO46AdvancedIOtechniques461ExampleReadingvarlogwtmp461Debugging461RegularExpressions47SLangRESyntax48DifferencesbetweenSLangandegrepREs48FutureDirections48CopyrightATheGNUPublicLicenseBTheArtisticLicense1PrefaceSLangisaninterpretedlanguagethatwasdesignedfromthestarttobeeasilyembeddedintoaprogramtoprovideitwithapowerfulextensionlanguageExamplesofprogramsthatuseSLangasanextensionlanguageincludethejedtexteditortheslrnnewsreaderandsldxeunreleasedanumericalcomputationprogramForthisreasonSLangdoesnotexistasaseparateapplicationandmanyoftheexamplesinthisdocumentarepresentedinthecontextofoneoftheaboveapplicationsSLangisalsoaprogrammerslibrarythatpermitsaprogrammertodevelopsophisticatedplatformindependentsoftwareInadditiontoprovidingtheSLangextensionlanguagethelibraryprovidesfacilitiesforscreenmanagementkeymapslowlevelterminalIOetcHoweverthisdocumentisconcernedonlywiththeextensionlanguageanddoesnotaddresstheseotherfeaturesoftheSLanglibraryForinformationabouttheothercomponentsofthelibrarythereaderisreferredtotheTheSLangLibraryReference11ABriefHistoryofSLangIfirstbeganworkingonSLangsometimeduringthefallof1992AtthattimeIwaswritingatexteditorjedwhichIwantedtoendowwithamacrolanguageItoccuredtomethatanapplicationindependentlanguagethatcouldbeembeddedintotheeditorwouldprovemoreusefulbecauseIcouldenvisionembeddingitintootherprogramsAsaresultSLangwasbornSLangwasoriginallyastacklanguagethatsupportedapostscriptlikesyntaxForthatreasonInameditSLangwheretheSwassupposedtoemphasizeitsstackbasednatureAboutayearlaterIbegantoworkonapreparserthatwouldallowonetowriteusingamoretraditionalinfixsyntaxmakingiteasiertouseforthoseunfamiliarwithstackbasedlanguagesCurrentlythesyntaxofthelanguageresemblesCneverthelesssomepostscriptlikefeaturesstillremainegthecharacterisstillusedasacommentdelimiter12AcknowledgementsSinceIfirstreleasedSLangIhavereceivedalotfeedbackaboutthelibraryandthelanguagefrommanypeopleThishasgivenmetheopportunityandpleasuretointeractwithseveralpe = 3;
int main(){
	AGuidetotheSLangLanguageJohnEDavisdavisspacemiteduMar232003TableofContentsPreface1ABriefHistoryofSLang2Acknowledgements2Introduction3LanguageFeatures4DataTypesandOperators5StatementsandFunctions6ErrorHandling7RunTimeLibrary8InputOutput9ObtainingSLang9OverviewoftheLanguage10VariablesandFunctions11Strings12ReferencingandDereferencing13Arrays14StructuresandUserDefinedTypes15Namespaces15DataTypesandLiteralConstants16PredefinedDataTypes161Integers162FloatingPointNumbers163ComplexNumbers164Strings165NullType166RefType167ArrayTypeandStructType168DataTypeTypeType17TypecastingConvertingfromoneTypetoAnother17Identifiers17Variables17Operators18UnaryOperators19BinaryOperators191ArithmeticOperators192RelationalOperators193BooleanOperators194BitwiseOperators195Namespaceoperator196OperatorPrecedence197BinaryOperatorsandFunctionsReturningMultipleValues20MixingIntegerandFloatingPointArithmetic21ShortCircuitBooleanEvaluation21Statements22VariableDeclarationStatements23AssignmentStatements24ConditionalandLoopingStatements241ConditionalForms2411if2412ifelse2413if2414orelseandelse2415switch242LoopingForms2421while2422dowhile2423for2424loop2425for2426forever2427foreach25breakreturncontinue25Functions26DeclaringFunctions27ParameterPassingMechanism28ReferencingVariables29FunctionswithaVariableNumberofArguments30ReturningValues31MultipleAssignmentStatement32ExitBlocks32NameSpaces32Arrays33CreatingArrays331RangeArrays332Creatingarraysviathedereferenceoperator34ReshapingArrays35IndexingArrays36ArraysandVariables37UsingArraysinComputations37AssociativeArrays37StructuresandUserDefinedTypes38DefiningaStructure39AccessingtheFieldsofaStructure40LinkedLists41DefiningNewTypes41ErrorHandling42ErrorBlocks43ClearingErrors43LoadingFilesevalfileandautoload43FileInputOutput44InputOutputviastdio441StdioOverview442StdioExamples45POSIXIO46AdvancedIOtechniques461ExampleReadingvarlogwtmp461Debugging461RegularExpressions47SLangRESyntax48DifferencesbetweenSLangandegrepREs48FutureDirections48CopyrightATheGNUPublicLicenseBTheArtisticLicense1PrefaceSLangisaninterpretedlanguagethatwasdesignedfromthestarttobeeasilyembeddedintoaprogramtoprovideitwithapowerfulextensionlanguageExamplesofprogramsthatuseSLangasanextensionlanguageincludethejedtexteditortheslrnnewsreaderandsldxeunreleasedanumericalcomputationprogramForthisreasonSLangdoesnotexistasaseparateapplicationandmanyoftheexamplesinthisdocumentarepresentedinthecontextofoneoftheaboveapplicationsSLangisalsoaprogrammerslibrarythatpermitsaprogrammertodevelopsophisticatedplatformindependentsoftwareInadditiontoprovidingtheSLangextensionlanguagethelibraryprovidesfacilitiesforscreenmanagementkeymapslowlevelterminalIOetcHoweverthisdocumentisconcernedonlywiththeextensionlanguageanddoesnotaddresstheseotherfeaturesoftheSLanglibraryForinformationabouttheothercomponentsofthelibrarythereaderisreferredtotheTheSLangLibraryReference11ABriefHistoryofSLangIfirstbeganworkingonSLangsometimeduringthefallof1992AtthattimeIwaswritingatexteditorjedwhichIwantedtoendowwithamacrolanguageItoccuredtomethatanapplicationindependentlanguagethatcouldbeembeddedintotheeditorwouldprovemoreusefulbecauseIcouldenvisionembeddingitintootherprogramsAsaresultSLangwasbornSLangwasoriginallyastacklanguagethatsupportedapostscriptlikesyntaxForthatreasonInameditSLangwheretheSwassupposedtoemphasizeitsstackbasednatureAboutayearlaterIbegantoworkonapreparserthatwouldallowonetowriteusingamoretraditionalinfixsyntaxmakingiteasiertouseforthoseunfamiliarwithstackbasedlanguagesCurrentlythesyntaxofthelanguageresemblesCneverthelesssomepostscriptlikefeaturesstillremainegthecharacterisstillusedasacommentdelimiter12AcknowledgementsSinceIfirstreleasedSLangIhavereceivedalotfeedbackaboutthelibraryandthelanguagefrommanypeopleThishasgivenmetheopportunityandpleasuretointeractwithseveralpe += 1;
	if( AGuidetotheSLangLanguageJohnEDavisdavisspacemiteduMar232003TableofContentsPreface1ABriefHistoryofSLang2Acknowledgements2Introduction3LanguageFeatures4DataTypesandOperators5StatementsandFunctions6ErrorHandling7RunTimeLibrary8InputOutput9ObtainingSLang9OverviewoftheLanguage10VariablesandFunctions11Strings12ReferencingandDereferencing13Arrays14StructuresandUserDefinedTypes15Namespaces15DataTypesandLiteralConstants16PredefinedDataTypes161Integers162FloatingPointNumbers163ComplexNumbers164Strings165NullType166RefType167ArrayTypeandStructType168DataTypeTypeType17TypecastingConvertingfromoneTypetoAnother17Identifiers17Variables17Operators18UnaryOperators19BinaryOperators191ArithmeticOperators192RelationalOperators193BooleanOperators194BitwiseOperators195Namespaceoperator196OperatorPrecedence197BinaryOperatorsandFunctionsReturningMultipleValues20MixingIntegerandFloatingPointArithmetic21ShortCircuitBooleanEvaluation21Statements22VariableDeclarationStatements23AssignmentStatements24ConditionalandLoopingStatements241ConditionalForms2411if2412ifelse2413if2414orelseandelse2415switch242LoopingForms2421while2422dowhile2423for2424loop2425for2426forever2427foreach25breakreturncontinue25Functions26DeclaringFunctions27ParameterPassingMechanism28ReferencingVariables29FunctionswithaVariableNumberofArguments30ReturningValues31MultipleAssignmentStatement32ExitBlocks32NameSpaces32Arrays33CreatingArrays331RangeArrays332Creatingarraysviathedereferenceoperator34ReshapingArrays35IndexingArrays36ArraysandVariables37UsingArraysinComputations37AssociativeArrays37StructuresandUserDefinedTypes38DefiningaStructure39AccessingtheFieldsofaStructure40LinkedLists41DefiningNewTypes41ErrorHandling42ErrorBlocks43ClearingErrors43LoadingFilesevalfileandautoload43FileInputOutput44InputOutputviastdio441StdioOverview442StdioExamples45POSIXIO46AdvancedIOtechniques461ExampleReadingvarlogwtmp461Debugging461RegularExpressions47SLangRESyntax48DifferencesbetweenSLangandegrepREs48FutureDirections48CopyrightATheGNUPublicLicenseBTheArtisticLicense1PrefaceSLangisaninterpretedlanguagethatwasdesignedfromthestarttobeeasilyembeddedintoaprogramtoprovideitwithapowerfulextensionlanguageExamplesofprogramsthatuseSLangasanextensionlanguageincludethejedtexteditortheslrnnewsreaderandsldxeunreleasedanumericalcomputationprogramForthisreasonSLangdoesnotexistasaseparateapplicationandmanyoftheexamplesinthisdocumentarepresentedinthecontextofoneoftheaboveapplicationsSLangisalsoaprogrammerslibrarythatpermitsaprogrammertodevelopsophisticatedplatformindependentsoftwareInadditiontoprovidingtheSLangextensionlanguagethelibraryprovidesfacilitiesforscreenmanagementkeymapslowlevelterminalIOetcHoweverthisdocumentisconcernedonlywiththeextensionlanguageanddoesnotaddresstheseotherfeaturesoftheSLanglibraryForinformationabouttheothercomponentsofthelibrarythereaderisreferredtotheTheSLangLibraryReference11ABriefHistoryofSLangIfirstbeganworkingonSLangsometimeduringthefallof1992AtthattimeIwaswritingatexteditorjedwhichIwantedtoendowwithamacrolanguageItoccuredtomethatanapplicationindependentlanguagethatcouldbeembeddedintotheeditorwouldprovemoreusefulbecauseIcouldenvisionembeddingitintootherprogramsAsaresultSLangwasbornSLangwasoriginallyastacklanguagethatsupportedapostscriptlikesyntaxForthatreasonInameditSLangwheretheSwassupposedtoemphasizeitsstackbasednatureAboutayearlaterIbegantoworkonapreparserthatwouldallowonetowriteusingamoretraditionalinfixsyntaxmakingiteasiertouseforthoseunfamiliarwithstackbasedlanguagesCurrentlythesyntaxofthelanguageresemblesCneverthelesssomepostscriptlikefeaturesstillremainegthecharacterisstillusedasacommentdelimiter12AcknowledgementsSinceIfirstreleasedSLangIhavereceivedalotfeedbackaboutthelibraryandthelanguagefrommanypeopleThishasgivenmetheopportunityandpleasuretointeractwithseveralpe == 4){
		return 0;
	}
}
