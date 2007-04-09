// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-11-10
// @uri@	news:cmsg75$rom$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2240

module dstress.run.throw_03;

class Class{
}

alias Class Alias;

int main(){
	try{
		throw new Alias();
	}catch{
		return 0;
	}
	assert(0);
}
