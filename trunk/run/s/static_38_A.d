// $HeadURL$
// $Date$
// $Author$

// @author@	Hasan Aljudy <hasan.aljudy@gmail.com>
// @date@	2007-02-22
// @uri@	http://www.digitalmars.com/webnews/newsgroups.php?&group=digitalmars.D.announce&article_id=7563
// @desc@	Re: DMD 1.007 release

module dstress.run.s.static_38_A;

dchar[] test(dchar[] input){
	if(input[3..5] != "rt"){
		return input[1..3];
	}else{
		return "my";
	}
}

int main(){
	static x = test("hello");
	if("hel" != x){
		assert(0);
	}
	return 0;
}
