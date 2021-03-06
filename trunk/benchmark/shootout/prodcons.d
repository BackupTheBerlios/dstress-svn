/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release prodcons.d
*/

import std.stdio, std.string, std.thread;

void main(char[][] args)
{
    int n = args.length > 1 ? atoi(args[1]) : 1;

    data = new Data;

    Thread prod = new Thread(&producer,cast(void*)n);
    Thread cons = new Thread(&consumer,cast(void*)n);

    prod.start();
    cons.start();

    prod.wait();
    cons.wait();

    writefln(data.produced," ",data.consumed);
}

int producer(void *arg)
{
    int i = 1, n = cast(int)arg;

    while(i <= n)
    {
        synchronized(data)
        {
            if(!data.count)
            {
                data.value = i;
                data.count = 1;
                data.produced++;
                i++;
            }
        }
        Thread.yield();
    }

    return(0);
}

int consumer(void *arg)
{
    int i = 0, n = cast(int)arg;

    while(i < n)
    {
        synchronized(data)
        {
            if(data.count)
            {
                i = data.value;
                data.count = 0;
                data.consumed++;
            }
        }
        Thread.yield();
    }

    return(0);
}

Data data;

class Data
{
    int count, value, consumed, produced;
}
