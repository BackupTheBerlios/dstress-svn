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
		assert(i==10);
	}
    
	void someFunc(){
		// We never call this function
		void bug(MyStruct[] array){
			array[0].i = i+1; // Comment out this line and the bug goes away
		}
    
		assert(i==10);
		display();
		assert(i==10);
	}
}
    
int main(){
	MyStruct m;
	m.i = 10;
	assert(m.i==10);
	m.someFunc();
	assert(m.i==10);
	return 0;
}   
