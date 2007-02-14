// $HeadURL$
// $Date$
// $Author$

// @author@	Christian Kamm <kamm@incasoftware.de>
// @date@	2006-01-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=825
// @desc@	[Issue 825] dmd segmentation fault with large char[] template value parameter

// the id is an extraction from slang-1.4.9-r1/slang.txt

module dstress.run.l.large_id_02_B;

void bug(char[] msg)(){
	if(441 != msg.length){
		assert(0);
	}
}

int main(){
	bug!("AGuidetotheSLangLanguageJohnEDavisdavisspacemiteduMar232003TableofContentsPreface1ABriefHistoryofSLang2Acknowledgements2Introduction3LanguageFeatures4DataTypesandOperators5StatementsandFunctions6ErrorHandling7RunTimeLibrary8InputOutput9ObtainingSLang9OverviewoftheLanguage10VariablesandFunctions11Strings12ReferencingandDereferencing13Arrays14StructuresandUserDefinedTypes15Namespaces15DataTypesandLiteralConstants16PredefinedDataTypes161Int")();
	return 0;
}
