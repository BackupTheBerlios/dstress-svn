// $HeadURI$
// $Author$
// $Date$

// @author@	Kevin Bealer <Kevin_member@pathlink.com>
// @date@	2005-04-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3808

module dstress.run.opIndex_04;

class Range{
	int width(){
		return 1;
	}
}

class Container {
	this(){
		data.length=2;
		data[0]=new Range;
		data[1]=new Range;
	}

	Range opIndex(int i){
		return data[i];
	}
    
	Range[] data;
}

int main(){
	Container ranges=new Container;
    
	Range r=ranges[0];
	if (r.width == 1){
		return 0;
	}
    
	assert(0);
}

