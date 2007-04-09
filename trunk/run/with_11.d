// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2004-10-07
// @uri@	news:ck3qie$1nia$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2042

module dstress.run.with_11;

auto class AutoClass{
}

int main(){
	auto AutoClass ac = new AutoClass();

	with(ac){
	}

	return 0;
}
