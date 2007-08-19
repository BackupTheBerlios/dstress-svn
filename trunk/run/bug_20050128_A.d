// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-01-28
// @uri@	news:ctdtgj$30r$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2784

module dstress.run.bug_20050128_A;

struct MyStruct{
	int i;
     
	void display(){
		if(10 != i){
			assert(0);
		}
	}
    
	void someFunc(){
		// We never call this function
		void bug(MyStruct[] array){
			array[0].i = i+1; // Comment out this line and the bug goes away
		}
    
		if(10 != i){
			assert(0);
		}
		display();
		if(10 != i){
			assert(0);
		}
	}
}
    
int main(){
	MyStruct m;
	m.i = 10;
	if(10 != m.i){
		assert(0);
	}
	m.someFunc();
	if(10 != m.i){
		assert(0);
	}
	return 0;
}   
