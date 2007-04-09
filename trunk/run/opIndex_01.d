// $HeadURI$
// $Author$
// $Date$

// @author@	Kevin Bealer <Kevin_member@pathlink.com>
// @date@	2005-04-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3808

module dstress.run.opIndex_01;

struct Range{
	int width(){
		return 1;
	}
}

class Container {
	Range opIndex(int i){
		return data[i];
	}
    
	Range[2] data;
}

int main(){
	Container ranges=new Container;
    
	if (ranges[0].width == 1){
		return 0;
	}
    
	assert(0);
}

