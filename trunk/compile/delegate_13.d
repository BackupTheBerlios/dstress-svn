// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2004-11-21
// @uri@	news:opshte8nzvaaezs2@localhost
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2315

module dstress.compile.delegate_13;

class A(T)
{
   void foo(void delegate (T) d) {}

   void bar()
   {
     foo(delegate void (T t) {});
   }
}

class B: A!(B) {}

class C: A!(C) {}

