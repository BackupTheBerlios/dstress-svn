// $HeadURL$
// $Date$
// $Author$

// @author@	Lukas Pinkowski <Lukas.Pinkowski@web.de>
// @date@	2005-03-08
// @uri@	news:d0isvn$pb6$1@digitaldaemon.com

module dstress.run.static_30;

int status;

class MyClass{
	static{
		this(){
			status=5;
		}
	}
}

int main(){
	assert(status==5);
	return 0;
}
