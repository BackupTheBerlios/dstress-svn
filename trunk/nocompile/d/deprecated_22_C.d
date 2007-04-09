// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander <csantander619@gmail.com>
// @date@	2006-05-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=7217

// __DSTRESS_ELINE__ 22

module dstress.nocompile.d.deprecated_22_C;

void baz() {
}

void foo(int i) {
}

deprecated alias baz foo;

void main(){
	foo();
}
