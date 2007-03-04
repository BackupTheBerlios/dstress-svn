// $HeadURL$
// $Date$
// $Author$

// @author@	<derick_eddington@nospam.yahoo.nospam.com>
// @date@	2005-03-06
// @uri@	news:d0dfb6$1mrv$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3091

module dstress.run.offsetof_47;

struct MyStruct{
	idouble x;
}

int main(){
	size_t t = MyStruct.x.offsetof;
	return 0;
}
