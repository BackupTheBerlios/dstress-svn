// $HeadURL$
// $Date$
// $Author$

// @author@	Geoff Hickey <Geoff_member@pathlink.com>
// @date@	2004-12-03
// @uri@	news:coodc7$27qp$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2431

module dstress.nocompile.bug_20041203_B;

struct MyStruct{
	int i;
}

int main(){
	MyStruct s;
	s.i = 1;

	switch( s.i ){
		case undefined_identifier:
			break;
	}

	return 0;
}





