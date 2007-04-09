// $HeadURL$
// $Date$
// $Author$

// @author@	simon hudon <simon_member@pathlink.com>
// @date@	2006-07-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=7907
// @desc@	foreach on aggregate class in some delegate litterals

module dstress.run.b.bug_declaration_440_C;

int[] status;

class Container {
	int opApply (int delegate (inout int) dg) {
		int counter = 3;
		dg(counter);
		counter--;
		dg(counter);
		return 0;
	}
}

int main() {
	auto a = (
		delegate(){
			foreach (i ; new Container()){
				status ~= i;
			}
		}
	);

	if(status.length != 0){
		assert(0);
	}

	a();

	if(status.length != 2){
		assert(0);
	}
	if((status[0] != 3) || (status[1] != 2)){
		assert(0);
	}

	return 0;
}
