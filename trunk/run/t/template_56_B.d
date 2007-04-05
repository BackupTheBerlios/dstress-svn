// $HeadURL$
// $Date$
// $Author$

// @author@	Marcin Kuszczak <aarti@interia.pl>
// @date@	2006-12-29
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=769
// @desc@	[Issue 769] Property not properly compiled - (error on valid code)

module dstress.run.t.template_56_B;

class DataManager {
	static DataManager instance() {
		return new DataManager();
	}

	T get(T)(int row) {
		return T.init;
	}
}

int main(){
	if(0xFF != DataManager.instance.get!(char)(1)){
		assert(0);
	}

	return 0;
}
