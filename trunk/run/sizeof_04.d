int main(){
	int[char[]] array;
	assert(array.sizeof == 8);
	array["drei"]=3;
	array["sieben"]=7;
	assert(array.sizeof == 8);
	return 0;
}
