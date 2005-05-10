/*
 http://www.diku.dk/~jacobg/edelta/
 
 The EDelta executable differ. 

 Copyright (C) 2003-2005 Jacob Gorm Hansen <jacob@melon.dk>.
 Licensed under the GNU Public License.

 TODO:
	- we now clamp delta size to sizeof(int), check if this creates problems at
      start of file (offset <4)

	- somehow guess endianess of file and use correct one
 */

/* 
	dirty transllation to D  
	Thomas Kuehne <thomas@kuehne.cn> 2005

	Challenge:
		Can you D'nize this code without major speed reductions?
*/

module cn.kuehne.thomas.edelta;

private import std.c.stdlib;
private import std.string;
private import std.stdio;
private import std.file;
private import std.string;

const int prefixlen = 32;
const int B = 131;
const int tolerance = int.sizeof;


struct buffer{ 
	char* string; 
	uint len;
} 

typedef ushort run_counter;

struct hash_match { 
	uint hash;
	int next_index;
	buffer* file; 
	uint offset; 
}

struct hash_entry{ 
	run_counter run; 
	int first_index;
}

struct delta_entry {
	int delta;
	int width;
	int dead_end;
	int num_elems;
	int max_elems;
	int bytes_saved;
	delta_entry* next; 
}

delta_entry* deltas[0x10000];
hash_entry hashes[0x4000];
hash_match* matches;

FILE* res;

delta_entry* storedelta(int d, int width, int offset)
{
	const int min_elems = 16;
	ushort key;
	delta_entry* e;
	delta_entry** pe;
	int *es;

	key = width>2 ? (d&0xffff) ^ (d>>16) : d;

	e = deltas[key];
	pe = &(deltas[key]);

	while(e && (e.width!=width || e.delta != d)) pe=&(e.next), e=e.next;
	
	if(!e) 
	{
		e = cast(delta_entry*) malloc(delta_entry.sizeof + int.sizeof*min_elems);
		e.delta = d;
		e.width = width;
		e.max_elems = min_elems;
		e.num_elems=0;
		e.bytes_saved=0;
		e.next=null;

		*pe = e;
	}

	if(e.num_elems==e.max_elems)
	{
		e.max_elems *= 2;
		*pe = e = cast(delta_entry*) realloc(e, delta_entry.sizeof + int.sizeof*e.max_elems);
	}
	es = cast(int*)(cast(char*)e + delta_entry.sizeof);

	es[e.num_elems++] = offset;

	return e;

}

uint get_c(buffer* b, uint offset)
{
	if(offset>=b.len) return 0;

	return b.string[offset];
}

void set_c(buffer* b, uint offset, char val)
{
	if(offset>=b.len) return;

	b.string[offset] = val;
}

int binary_search(int* first, int* last, int val)
{
	int half;
	int *middle;
	int len = last-first;
	while (len > 0) 
	{
		half = len >> 1;
		middle = first;

		middle += half;

		if (*middle < val)
		{
			first = middle;
			++first;
			len = len - half - 1;
		} 
		else len = half;
	}

    return ((first != last) && (*first==val));


}

extern(C) int intcmp(void* va, void* vb)
{
	int a = *(cast(int*)va);
	int b = *(cast(int*)vb);

	return a-b;
}

/* store n copies of the value in file, 1<= n <2^13 */

/* prefixes:
   0 == byte (7 bits)
   4 == 2 bytes (13 bits)
   5 == 3 bytes (21 bits)
   6 == 4 bytes (29 bits) 
   7 == 13 bits specifying RLE of next element
   */


/* this is to better compress 4-byte aligned offsets, as they are common */
int swap(int x)
{
	return ((x&3)<<7) | (  (x&0x180)>>7) | (x & 0xfffffe7c);
}

void storeanyint(uint v, FILE* f)
{
debug	printf("any: . %d\n", v);
	v = htonl(v);
	fwrite(&v, v.sizeof, 1, f);
}

uint readanyint(FILE* f)
{
	int v;
	int s= fread(&v, v.sizeof, 1, f);

	if(s<=0)
	{
		printf("only read %d elements\n",s);
		puts("EOF");
		exit(-1);

	}
debug	printf("any: <- %d\n", ntohl(v));
	return ntohl(v);
}

void storeint(uint v, int n, FILE* f)
{
	int i,w;

debug	for(i=0; i<n; i++) printf("int: . %d\n", v);


	if(v<0x80) w=1;
	else if(v<0x2000) w=2, v |= (4<<13);
	else if(v<0x200000) w=3, v |= (5<<21);
	else if(v<0x20000000) w=4, v |= (6<<29);
	else printf("oups %x!\n",v), exit(-1);


	if(n>1)
	{
		if(n>2 || w>1)
		{
			ushort r = (7<<13) | n;
			fputc( r>>8 , f);
			fputc( r, f);
			n=1;
		}
	}
	for(i=0; i<n; i++)
	{
		int j;

		for(j=w-1; j>=0; j--)
		{
			fputc( v >> (j*8), f);
		}
	}

}

int cgetc(FILE* f)
{
	int r= fgetc(f);
	if(r==EOF) 
	{
		puts("cgetc EOF");
		exit(-1);
	}
	return r;
}

int readint(FILE* f)
{
	static uint rept=0;
	static int v;
	int i;

	if(rept==0) /* rept is static */
	{
		int h,w;
		v = 0;
		h = cgetc(f);

		if( (h>>5)==7 )
		{
			int c = cgetc(f);

			rept = (h & 0x1f) << 8 | c;
			--rept;

			h = cgetc(f);
		}

		if((h&0x80)==0)	v = h&0x7f;
		else 
		{
			w = (h>>5)-3;	/* remaining bytes to read */

			v = h & 0x1f;

			for(i=0; i<w; i++)
			{
				v = v<<8 | cgetc(f);
			}
		}


	}
	else --rept;

debug	printf("int: <- %d\n", v);

	return v;
}

int bufcmp(buffer* a,int oa, buffer* b, int ob, int len)
{
	int i;

	for(i=0; i< len; i++)
	{
		if(get_c(a,oa+i) != get_c(b,ob+i))
		{
			return 0;
		}
	}
	return 1;

}

void diff(buffer* base, buffer* version_)
{
	int pass;
	int i;
	int num_adds=0;
	int addsize=0;
	int num_deltas=0;
	uint max_matches=0x4000;
	int *dead_ends;
	int num_dead_ends=0;
	matches = cast(hash_match*) malloc(hash_match.sizeof * max_matches);

	storeint(version_.len, 1, res);

	for(pass=0; pass<2; pass++)
	{
		uint h_d; /* =  1 << (prefixlen-1); */
		uint h_b=0;
		uint h_v=0;
		int v_start=0;
		int v_offset=0;
		int b_offset=0;
		ushort run=1;
		uint num_matches=0;
		const uint mask = hashes.sizeof/hash_entry.sizeof-1;
		int v_last_start=0;
		int v_last_copy=0;
		int b_last_copy=0;

		for(h_d=i=1; i<prefixlen; i++)
		{
			h_d = B*h_d;
		}
		for(i=0; i<prefixlen; i++)
		{
			h_b =  B*h_b + get_c(base,i);
			h_v =  B*h_v + get_c(version_,i);
		}
		memset(hashes, 0, hashes.sizeof);
		memset(deltas, 0, deltas.sizeof);


		while(v_offset<=version_.len)
		{
			struct sss { buffer* current; uint* h ; int* offset;}
			sss[] files;
			{
				sss a;
				a.current = base;
				a.h = &h_b;
				a.offset = &b_offset;
				sss b;
				b.current=version_;
				b.h=&h_v;
				b.offset=&v_offset;
				files~=a;
				files~=b;
			}

			for(i=0; i<2; i++) 
			{
				sss* f = &(files[i]);
				uint* h = f.h;
				hash_entry* e = &(hashes[*h & mask]);

				int index = (e.run==run) ? e.first_index : 0;
				int prev;

				while(index && matches[index].hash!=*h) prev=index, index = matches[index].next_index;
				/* while(index && bufcmp( f.current, *(f.offset), matches[index].file, matches[index].offset, prefixlen)==0) prev=index, index = matches[index].next_index; */

				if(index)
				{
					hash_match* m = &(matches[index]);
					if(m.file!=f.current &&
								bufcmp( f.current, *(f.offset), m.file, m.offset, prefixlen))
					{
						int b_copy;
						int v_copy;
						int l = 0;/* prefixlen; */
						int faults = 0;
						
						if(m.file==base)
						{
							b_copy = m.offset;
							v_copy = v_offset;
						}
						else
						{
							b_copy = b_offset;
							v_copy = m.offset; 
						}

						int ahead=0;
						uint a=0;
						uint b=0;

						uint a2=0;
						uint b2=0;

						/* since our hash function does not allow for holes we better 
						   scan backwards to see if perhaps we missed something */

						/* I think it is strange that only looping until v_start
						 * gives better results than looping all the way back to 0 
						 *
						 * probably not...
						 *
						 * going further back will result in overlaps with other 
						 * matches
						 *
						 * ahead scanning further than b_last_copy will screw up 
						 * the delta-storing further below
						 *
						 * */
debug 						printf("v_offset %d  v_start %d  b_copy %d b_last_copy %d\n", v_offset, v_start, b_copy, b_last_copy); 
						while( (b_copy-ahead)>b_offset && (v_copy-ahead)>v_offset)
						{

							++ahead;

							uint c_b = get_c(base, b_copy-ahead);
							uint c_v = get_c(version_,v_copy-ahead);


							if( c_b != c_v)
							{
								a = a | (c_b << (faults*8));
								b = b | (c_v << (faults*8));
								faults++; 
							}
							else
							{
								if(faults && num_dead_ends && binary_search( dead_ends, dead_ends+num_dead_ends, b-a))
								{
debug									printf("stopped ahead scan due to %d   %d %d\n", b-a,ahead,faults);
									ahead=faults=0; /* EXP */
									/* ahead-=(faults+1); */
									break;
								}
								faults=0;
								a=b=0;
							}
							
							if(faults>tolerance) 
							{
								ahead-=faults;
								break;
							}
						}
debug						printf("ahead scanning at %d found %d bytes\n", v_offset,ahead);

						/* TODO there is a problem here, in that the loop may end for lack of data rather than 
						 * because of too many errors, while the data at the extreme left is actually in the
						 * dead-ends list. Try and check for this case here:
						 */

						if(ahead && faults)
						{
							if(num_dead_ends && binary_search( dead_ends, dead_ends+num_dead_ends, b-a))
								ahead -= (faults);
							
debug							printf("ahead %d %d faults %d\n",ahead,b-a,faults);
						}

						faults=0;

						b_copy-=ahead;
						v_copy-=ahead;


						a=0;
						b=0;

						a2=0;
						b2=0;


						delta_entry* pdelta=null;

						while(b_copy+l<base.len && v_copy+l<version_.len)
						{
							uint c_b = get_c(base, b_copy+l);
							uint c_v = get_c(version_,v_copy+l);

							if(c_b != c_v)
							{
								a2 = (c_b << 24) | (a2>>8);
								b2 = (c_v << 24) | (b2>>8);
								a = (a<<8) | c_b;
								b = (b<<8) | c_v;
								faults++;
							}

							else if(faults)
							{
								/* if we correctly match the endianess of the
								   platform for which the binary is compiled, we
								   get better results. In the future, this should
								   be detected from the elf header or similar.

								   Right now, big endian is assumed, TODO fix this.
								 
								 */

								/* int d2 = (b2 >> (8*(sizeof(int)-faults))) - (a2 >> (8*(sizeof(int)-faults))); */





								int d = b-a;
								a=b=a2=b2=0;
								if(num_dead_ends==0 || (!binary_search( dead_ends, dead_ends+num_dead_ends, d)))
								{

									faults=int.sizeof; /* EXP */

									pdelta = storedelta(d, faults, v_copy+l-faults);

									faults = 0;


									num_deltas++;
								}
								else
								{
									l -= faults;
									break;
								}

							}


							if(faults > tolerance) 
							{
								l -= faults;
								break;
							}

							if(pdelta) pdelta.bytes_saved++;


							l++;


						}



						addsize+=v_copy-v_start;
						num_adds++;

						if(pass==1)
						{
debug{
							printf("store range l %d %d %d %d\n",
									v_start - v_last_start,
									v_copy - v_last_copy,
									b_copy - b_last_copy,
									l);
}
							storeint( v_start - v_last_start, 1, res);
							storeint( v_copy - v_last_copy ,  1, res);
							storeint( b_copy - b_last_copy ,  1, res);
							storeint( l,       1, res);
							v_last_start = v_start;
							v_last_copy = v_copy;
							b_last_copy = b_copy;
							fwrite(version_.string+v_start, v_copy-v_start, 1, res);
						}

						v_offset = v_copy+l;
						b_offset = b_copy+l;

						/* need to calc all fresh hashes from new offsets */
						h_b = h_v = 0;
						for(i=0; i<prefixlen; i++)
						{
							h_b =  B*h_b + get_c(base,b_offset+i);
							h_v =  B*h_v + get_c(version_,v_offset+i);
						}

						/* in case of overrun we need to forcefully reset the hash table */
						num_matches=0;
						if(++run==0)
						{
							memset(hashes, 0, hashes.sizeof);
							run=1;
						}
						v_start = v_offset;

						continue; /* skip rehash, we just made full hashes */
					}
				}
				else 
				{

					if(++num_matches >= max_matches)
					{
						max_matches *= 2;
						matches = cast(hash_match*) realloc(matches, hash_match.sizeof * max_matches);
					}

					if(e.run!=run)
					{
						e.run = cast(run_counter) run;
						e.first_index = num_matches;
					}
					else matches[prev].next_index = index;

					matches[num_matches].hash = *h;
					matches[num_matches].file = f.current;
					matches[num_matches].offset = *(f.offset);
					matches[num_matches].next_index = 0;
				}

			}
			h_b = B*(h_b - h_d*get_c(base,b_offset)) + get_c( base, b_offset+prefixlen);
			h_v = B*(h_v - h_d*get_c(version_,v_offset)) + get_c( version_, v_offset+prefixlen);

			v_offset++;
			b_offset++;
		}


		if(pass==0)
		{
			int max_dead_ends=8;
			dead_ends = cast(int*) malloc(max_dead_ends*int.sizeof);
			for(i=0; i<deltas.sizeof/(delta_entry*).sizeof; i++)
			{
				delta_entry* e;
				if( e = deltas[i], e )
				{
					do
					{
						if(e.bytes_saved<8)  /* TODO WAS 8 */
						{
							if(num_dead_ends==max_dead_ends)
							{
								max_dead_ends*=2;
								dead_ends = cast(int*) realloc(dead_ends, max_dead_ends*int.sizeof);
							}
							dead_ends[num_dead_ends++] = e.delta;

							debug printf("DEAD %d\n",e.delta);
						}

					} while(e=e.next, e);
				}
			}

			qsort(cast(void*)dead_ends, cast(uint)num_dead_ends, cast(uint)int.sizeof, &intcmp);
			printf("%d filtered\n",num_dead_ends);

		}
	}

	storeint( 0, 4, res);


	int num_distinct=0;

	for(i=0; i<deltas.sizeof/(delta_entry*).sizeof; i++)
	{
		delta_entry* e;
		if( e = deltas[i], e )
		{
			do
			{
				int* es = cast(int*)(cast(char*)e + delta_entry.sizeof);
				int j;
				int sub=0;

				storeanyint(e.delta, res);
				/* storeint(e.width, 1, res); // EXP */
				storeint(e.num_elems, 1, res);
				
				for(j=0; j<e.num_elems; j++)
				{
					int v = es[j]-sub;

					int rept=0;
					while(v == es[j+1]-es[j] && j<e.num_elems)
					{
						j++;
						rept++;
					}
					storeint(swap(v), rept+1, res);

					sub = es[j];
				}

				num_distinct++;

			} while(e=e.next, e);

		}
	}
	storeanyint( 0, res);

	printf("%d (%d bytes) adds, %d/%d deltas\n",num_adds,addsize, num_deltas, num_distinct);
}

void reconstruct(FILE* base,buffer* dest, FILE* f)
{
	dest.len = readint(f);
	debug printf("dest len %d\n", dest.len);
	dest.string = cast(char*)malloc(dest.len);

	int v_start = 0;
	int v_copy = 0;
	int b_copy = 0;

	while(1)
	{
		int v_start_delta = readint(f);
		int v_copy_delta = readint(f);
		int b_copy_delta = readint(f);
		int l = readint(f);
		v_start += v_start_delta;
		v_copy += v_copy_delta;
		b_copy += b_copy_delta;
		debug printf("read range l %d %d\n",v_start_delta, l);
		if(l==0 && v_start_delta==0 && v_copy_delta==0 && b_copy_delta==0) break;

		fread(dest.string+v_start, v_copy-v_start, 1, f);
		fseek(base, b_copy, SEEK_SET);
		fread(dest.string+v_copy, l,1, base);
	}

	while(1)
	{
		int delta,width,num_elems;
		int offset=0, i;
		
		if(delta = readanyint(f), !delta ) break;
		debug printf("delta %d\n", delta);
		width = int.sizeof;/* readint(f); //EXP */
		num_elems = readint(f);

		debug printf("num_elems %d\n", num_elems);
		for(i=0; i<num_elems; i++)
		{
			uint a=0;
			char *pval;

			offset += swap(readint(f));

			pval = dest.string+offset;

			int j;
			for(j=0; j<width; j++)
			{
				a = (a<<8) | pval[j];
			}

			a += delta;

			for(j=width-1; j>=0; j--)
			{
				pval[j] = a;
				a >>= 8;
			}

		}
	}


}

void usage()
{

	printf("Usage: edelta delta BASE VERSION PATCH\n");
	printf("  or : edelta patch BASE PATCH VERSION\n");
	exit(-1);

}

int main(char[][] args){

	FILE *f;
	int i;

	buffer buffers[2];

	if(args.length<4) usage();

	if(args[1]=="test")
	{
		f = fopen("f", "w");
		storeint(0x12345678,255, f);
		storeint(23434,3, f);
		fclose(f);


		f = fopen("f", "r");
		printf("%x\n", readint(f));
		printf("%x\n", readint(f));
		printf("%x\n", readint(f));
		printf("%x\n", readint(f));
		printf("%x\n", readint(f));
		fclose(f);

		exit(0);
	}


	if(args[1]=="delta")
	{
		for(i=0; i<2; i++)
		{
			char[] data=cast(char[]) std.file.read(args[i+2]);
			buffers[i].string = std.string.toStringz(data);
			buffers[i].len=data.length;
		}

		res = fopen(args[4],"w");
		diff(&(buffers[0]), &(buffers[1]));
		fclose(res);
	}

	else if(args[1]=="patch")
	{
		FILE* base;

		base = fopen(args[2], "r");
		f = fopen(args[3], "r");
		reconstruct(base, &buffers[1], f);
		debug printf("len %d\n", buffers[1].len);
		fclose(base);
		fclose(f);

		f = fopen(args[4], "w+");
		fwrite(buffers[1].string, buffers[1].len, 1, f);
		fclose(f);
	}
	
	else usage();

	return 0;
}


// Oh my...
private import std.stdint;

version(BigEndian){
	uint16_t htons(uint16_t x){
		return x;
	}
	
	uint32_t htonl(uint32_t x){
		return x;
	}
}else version(LittleEndian){
	private import std.intrinsic;
	
	uint16_t htons(uint16_t x){
		return (x >> 8) | (x << 8);
	}

	uint32_t htonl(uint32_t x){
		return bswap(x);
	}
}else{
	pragma(msg, "no endian defined");
	static assert(0);
}

uint16_t ntohs(uint16_t x){
	return htons(x);
}

uint32_t ntohl(uint32_t x){
	return htonl(x);
}

