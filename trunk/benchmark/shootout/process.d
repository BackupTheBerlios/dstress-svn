/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   contributed by Isaac Gouy

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release process.d
*/

import std.thread, std.stream, std.string;

void main(char[][] args)
{
    int n = args.length > 1 ? atoi(args[1]) : 1;

    EndLink chainEnd = new EndLink(n);
    chainEnd.start();

    Link chain = chainEnd;
    for(int i = 1; i < n; i++)
    {
        Link link = new Link(chain);
        chain = link;
    }

    chain.put(0);
    while(chain.next)
    {
        chain.start();
        chain.wait();
        chain = chain.next;
    }

    chainEnd.wait();
    stdout.writefln(chainEnd.count);
}

class Link: Thread
{
private:
    int message = -1;

public:
    Link next;

    this(Link t)
    {
        next = t;
    }

    int run()
    {
        next.put(this.take());
        return 0;
    }

    synchronized void put(int m)
    {
        message = m;
        yield();
    }

protected:
    synchronized int take()
    {
        if(message != -1)
        {
            int m = message;
            message = -1;
            return m + 1;
        }
        yield();
        return 0;
    }
}

class EndLink: Link
{
private:
    int finalCount;

public:
    int count = 0;

    this(int i)
    {
        super(null);
        finalCount = i;
    }

    int run()
    {
        while(count < finalCount)
        {
            count += this.take();
        }
        return 0;
    }
}
