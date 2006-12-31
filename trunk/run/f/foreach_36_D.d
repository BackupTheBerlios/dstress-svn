// $HeadURL$
// $Date$
// $Author$

// @author@	Serg Kovrov <reg4dyh@inbox.lv>
// @date@	2006-07-30	
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=272
// @desc@	[Issue 272] foreach inside anonymous function crashes dmd.exe

module destress.run.f.foreach_36_D;

alias void function(char[]) FN;

int status;

int main(){
	FN fn = function(char[] array){
		int count;
		
		foreach (size_t index, char element; array){
			if(index != 0){
				assert(0);
			}
			if(element != 'a'){
				assert(0);
			}
			status++;
		}
	};

	char[] array = "a";
	status = 0;

	fn(array);

	if(status != 1){
		assert(0);
	}

	return 0;
}

