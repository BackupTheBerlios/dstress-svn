// $HeadURL$
// $Date$
// $Author$

// @author@	<daiphoenix@lycos.com>
// @date@	2006-03-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=51

module dstress.run.s.string_postfix_07_A;

int main(){
	char[6] cstr = "123456"c;
	auto a = cast(wchar[3])(cstr);
	auto b = cast(wchar[3])("123456"c);

	if(a.length != b.length){
		assert(0);
	}

	if(a != b){
		assert(0);
	}

	return 0;
}
