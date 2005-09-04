module addon.bug_20050903_Y;

template DataStreamability(){
	const int isStreamable = true;

	void read(int st, int val){
		st >>= val;
	}
}

struct Vector(T){
	static if (DataStreamability!().isStreamable){
	}
}