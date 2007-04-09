// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-02-22
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6340

// __DSTRESS_ELINE__ 16

module dstress.nocompile.a.assert_14_F;

template cat(){
	static if(1){
		static if(1){
			static assert(0);
			const int cat = 3;
		}
	}
}

static assert(cat!() == 3);

