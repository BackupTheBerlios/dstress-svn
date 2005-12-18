// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

module dstress.run.o.opSlice_02_C;

int main() {
	int[] piece = new int[6];
	int[] item;

	piece[2..5] = 13;
	item = piece[2..5];

	assert (item.ptr is piece[2..5].ptr);

	piece[3] = 25;

	assert (piece[0] == 0);
	assert (piece[1] == 0);
	assert (piece[2] == 13);
	assert (piece[3] == 25);
	assert (piece[4] == 13);
	assert (piece[5] == 0);

	assert (item.length == 3);
	assert (item[0] == 13);
	assert (item[1] == 25);
	assert (item[2] == 13);

	return 0;
}
