// $HeadURL$
// $Date$
// $Author$

// @author@	<daiphoenix@lycos.com>
// @date@	2006-03-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=51

module dstress.run.s.string_postfix_07_B;

int main(){
	char[6] cstr = "1234"c;
	auto a = cast(dchar[1])(cstr);
	auto b = cast(dchar[1])("1234"c);

	if(a.length != b.length){
		assert(0);
	}

	if(a != b){
		assert(0);
	}

	return 0;
}
