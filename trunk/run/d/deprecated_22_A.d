// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander <csantander619@gmail.com>
// @date@	2006-05-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=7217

module dstress.run.d.deprecated_22_A;

int status;

void baz() {
	status--;
}

deprecated alias baz foo;

void foo(int i) {
	status += i;
}

int main(){
	status = 90;

	foo(2);

	if(status != 92){
		assert(0);
	}

	return 0;
}
