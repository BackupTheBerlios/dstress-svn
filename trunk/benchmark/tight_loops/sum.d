/*
 * $HeadURL$
 * $Date$
 *
 * summing large D arrays - or - performance of tight loops
 *
 * Copyright (c) 2007, Thomas Kühne thomas@kuehne.cn
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

T sum_foreach(T)(T[] data){
	T result = 0;
	foreach(element; data){
		result += element;
	}
	return result;
}

T sum_array(T)(T[] data){
	T result = 0;
	size_t index = 0;
	while(index < data.length){
		result += data[index];
		index++;
	}
	return result;
}

T sum_array_const_length(T)(T[] data){
	T result = 0;
	size_t length = data.length;
	size_t index = 0;
	while(index < length){
		result += data[index];
		index++;
	}
	return result;
}

T sum_pointer(T)(T[] data){
	T result = 0;
	auto end = data.ptr + data.length;
	auto ptr = data.ptr;
	
	while(ptr != end){
		result += *ptr;
		ptr++;
	}
	return result;
}

T sum_pointer_2a(T)(T[] data){
	T result_a = 0;
	T result_b = 0;
	
	auto end = data.ptr + data.length;
	
	auto ptr_a = data.ptr;
	auto ptr_b = data.ptr + 1;

	while(ptr_b < end){
		result_a += *ptr_a;
		result_b += *ptr_b;
		ptr_a += 2;
		ptr_b += 2;
	}

	if(ptr_a < end){
		result_a += *ptr_a;
	}
	return result_a + result_b;
}

T sum_pointer_2b(T)(T[] data){
	T result = 0;
	
	auto end = data.ptr + data.length;
	
	auto ptr_a = data.ptr;
	auto ptr_b = data.ptr + 1;

	while(ptr_b < end){
		result += *ptr_a;
		ptr_a += 2;
		result += *ptr_b;
		ptr_b += 2;
	}

	if(ptr_a < end){
		result += *ptr_a;
	}
	return result;
}

T sum_pointer_2c(T)(T[] data){
	T result = 0;

	if(0 != data.length){
		auto end = data.ptr + data.length - 1;
		auto ptr = data.ptr;

		while(ptr < end){
			result += *(ptr+0);
			result += *(ptr+1);
			ptr += 2;
		}

		if(ptr == end){
			result += *ptr;
		}
	}
	return result;
}

T sum_struct2(T)(T[] data){
	struct S{
		T a = 0;
		T b = 0;
	}

	S result;
	S* s = cast(S*) data.ptr;
	S* end = s + (data.length / 2);
	while(s < end){
		result.a += s.a;
		result.b += s.b;
		s++;
	}

	switch(data.length % 2){
		case 1:
			result.a += s.a;
		case 0:
			break;
	}

	return result.a + result.b;
}

T sum_struct4(T)(T[] data){
	struct S{
		T a = 0;
		T b = 0;
		T c = 0;
		T d = 0;
	}

	S result;
	S* s = cast(S*) data.ptr;
	S* end = s + (data.length / 4);
	while(s < end){
		result.a += s.a;
		result.b += s.b;
		result.c += s.c;
		result.d += s.d;
		s++;
	}
	
	switch(data.length % 4){
		case 3:
			result.c += s.c;
		case 2:
			result.b += s.b;
		case 1:
			result.a += s.a;
		case 0:
			break;
	}

	return result.a + result.b + result.c + result.d;
}

T sum_sse(T)(T[] data){
	static char[] generate_asm(){
		static if(is(T : double)){
			const char[] movu = "movupd";
			const char[] mova = "movapd";
			const char[] add = "addpd";
		}else static if(is(T : float)){
			const char[] movu = "movups";
			const char[] mova = "movaps";
			const char[] add = "addps";
		}else{
			const char[] movu = "movdqu";
			const char[] mova = "movdqa";
			static if(is(T : ubyte) || is(T : byte)){
				const char[] add = "paddb";
			}else static if(is(T : ushort) || is(T : short)){
				const char[] add = "paddw";
			}else static if(is(T : uint) || is(T : int)){
				const char[] add = "paddd";
			}else static if(is(T : long) || is(T : long)){
				const char[] add = "paddq";
			}else{
				static assert(0, "add_sse doesn't support " ~ T.tostring);
			}
		}

		version(X86){
			return "asm{
				// startup
				mov ECX, pos;
				mov EAX, buffer;
				" ~ movu ~ " XMM0, [EAX];
				" ~ movu ~ " XMM2, [EAX];
				" ~ movu ~ " XMM4, [EAX];
				" ~ movu ~ " XMM6, [EAX];
				mov EAX, sse_end;

			Lnext:
					" ~ mova ~ " XMM1, [ECX];
						" ~ mova ~ " XMM3, [ECX+16];
					" ~ add ~ " XMM0, XMM1;
							" ~ mova ~ " XMM5, [ECX+32];
						" ~ add ~ " XMM2, XMM3;
								" ~ mova ~ " XMM7, [ECX+48];
							" ~ add ~ " XMM4, XMM5;
				add ECX, 64;
								" ~ add ~ " XMM6, XMM7;
				cmp EAX, ECX;
				jnz Lnext;

				// finish
				" ~ add ~ " XMM0, XMM2;
				" ~ add ~ " XMM4, XMM6;
				" ~ add ~ " XMM0, XMM4;
				mov	EAX, buffer;
				" ~ movu ~ " [EAX], XMM0;
				mov	pos, ECX;
			}";
		}else{
			static assert(0, "unsupported architecture");
		}
	}

	const elements = 16 / T.sizeof;

	T result = 0;
	T* pos = data.ptr;
	T* end = pos + data.length;

	// unaligned leader
	while((pos < end) && ((cast(size_t)pos) % 64)){
		result += pos[0];
		pos++;
	}

	// SSE
	T* sse_end = cast(T*)((cast(size_t)end) / 64);
	if(pos + (4 * elements) < sse_end){
		T[elements] buffer_source;
		buffer_source[0 .. elements] = 0;

		T* buffer = buffer_source.ptr;

		mixin (generate_asm());

		for(size_t i = 0; i < elements; i++){
			result += buffer[i];
		}
		delete buffer;
	}

	// trailer
	while(pos < end){
		result += pos[0];
		pos++;
	}

	return result;
}

version(benchmark){
	import std.stdio;
	import std.perf;
	import std.c.stdlib;
	import std.c.stdio;

	void benchmark_sum(T, alias fill_function)(size_t array_length, size_t repeat){
		PerformanceCounter counter = new PerformanceCounter();
		T* input_raw = cast(T*) calloc(array_length, T.sizeof);
		
		if(null == input_raw){
			writefln("failed to allocate memory");
			return;
		}
		T[] input = input_raw[0 .. array_length];

		foreach(index, inout element; input){
			element = fill_function!(T)(index);
		}

		T function(T[])[char[]] tests;
		tests["sum_foreach"] = &sum_foreach!(T);
		tests["sum_array"] = &sum_array!(T);
		tests["sum_array_const_length"] = &sum_array_const_length!(T);
		tests["sum_pointer"] = &sum_pointer!(T);
		tests["sum_pointer_2a"] = &sum_pointer_2a!(T);
		tests["sum_pointer_2b"] = &sum_pointer_2b!(T);
		tests["sum_pointer_2c"] = &sum_pointer_2c!(T);
		tests["sum_pointer_2c"] = &sum_pointer_2c!(T);
		tests["sum_struct2"] = &sum_struct2!(T);
		tests["sum_struct4"] = &sum_struct4!(T);
		tests["sum_sse"] = &sum_sse!(T);
		
		if(0 == array_length){
			writef("sum (%s[])", T.stringof);
			foreach(name; tests.keys.sort){
				writef("\t%s", name);
			}
			writefln("");
			return;
		}
		

		foreach(name; tests.keys.sort){
			auto f = tests[name];
			counter.start();
			for(int count = 0 ; count < repeat; count++){
				T result = f(input);
				fwritefln(stderr, "%s(%s[%s]) %s", name, T.stringof, input.length, result);
			}
			counter.stop();
			writef("\t%s", counter.microseconds());
		}
		writefln("");
		delete input;
		free(input_raw);
	}

	T index_fill(T)(size_t index){
		return index;
	}

	void benchmark(T)(int repeat_count){
		benchmark_sum!(T, index_fill)(0, repeat_count);
		for(int i = 1; i < 32; i++){
			writef("2 ^ %s\t", i);
			benchmark_sum!(T, index_fill)(i, repeat_count);
		}
	}

	void main(){
		writefln("summing large D arrays $Revision$");
		writefln();
		benchmark!(byte)();
		writefln();
		benchmark!(short)();
		writefln();
		benchmark!(int)();
		writefln();
		benchmark!(long)();
		writefln();
		benchmark!(float)();
		writefln();
		benchmark!(double)();
	}
}
