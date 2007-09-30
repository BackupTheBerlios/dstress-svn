// $HeadURL$
// $Date$
// $Author$

// @author@	<braddr@puremagic.com>
// @date@	2007-09-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1513
// @desc@	[Issue 1513] try/catch/finally misbehavior on windows

module dstress.run.f.finally_12_A;

int[] log;

void check(){
	try{
		log ~= 1;
		try{
			log ~= 2;
			try{
				log ~= 3;
			}finally{
				log ~= 4;
				throw new Exception("ex 1");
				log ~= 5;
			}
			log ~= 6;
		}catch(Exception e){
			log ~= 7;
			if("ex 1" != e.toString()){
				assert(0);
			}
		}finally{
			log ~= 8;
			throw new Exception("ex 2");
			log ~= 9;
		}
		log ~= 10;
	}catch(Exception e){
		log ~= 11;
		if("ex 2" != e.toString()){
			assert(0);
		}
	}finally{
		log ~= 12;
		throw new Exception("ex 3");
		log ~= 13;
	}
	log ~= 14;
}

int main(){
	try{
		log ~= 20;
		check();
		log ~= 21;
	}catch(Exception e){
		log ~= 22;
		if("ex 3" != e.toString()){
			assert(0);
		}
	}
	if([20,1,2,3,4,7,8,11,12,22] != log){
		assert(0);
	}
	return 0;
}
