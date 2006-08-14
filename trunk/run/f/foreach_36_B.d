// $HeadURL$
// $Date$
// $Author$

// @author@	Serg Kovrov <reg4dyh@inbox.lv>
// @date@	2006-07-30	
// @uri@	news:bug-272-3@http.d.puremagic.com/issues/
// @desc@	[Issue 272] foreach inside anonymous function crashes dmd.exe

module destress.run.f.foreach_36_B;

alias void delegate(char[][int]) FN;

int main(){
	int status;

	FN fn = delegate(char[][int] aarray){
		int count;
		
		foreach (int key, char[] element; aarray){
			if(key != 6){
				assert(0);
			}
			if(element != "a"){
				assert(0);
			}
			status++;
		}
	};

	char[][int] aarray;
	aarray[6] = "a";

	status = 0;

	fn(aarray);

	if(status != 1){
		assert(0);
	}

	return 0;
}
