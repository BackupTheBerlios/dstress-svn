/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release echo.d
*/

import std.stdio, std.string, std.socket, std.thread;

uint port;

void main(char[][] args)
{
    int n = args.length > 1 ? atoi(args[1]) : 1;

    Thread server = new Thread(&echoServer,cast(void*)n);
    Thread client = new Thread(&echoClient,cast(void*)n);

    server.start();
    client.start();

    server.wait();
    client.wait();
}

int echoServer(void* arg)
{
    int n = cast(int)arg;

    Socket sock;

    try
    {
        sock = serverSock.accept();
    }
    catch(SocketAcceptException sae)
    {
        fwritefln(stderr,"server/accept");
        return(0);
    }

    int len, total;
    char[] buffer = new char[4096];
    while((len = sock.receive(buffer)) > 0)
    {
        total += len;
        if(sock.send(buffer[0..len]) == Socket.ERROR)
        {
            fwritefln(stderr,"server/write");
            break;
        }
    }

    if(len == Socket.ERROR) fwritefln(stderr,"server/read");
    sock.close();

    writefln("server processed ",total," bytes");

    return(0);
}

int echoClient(void* arg)
{
    int n = cast(int)arg;

    Socket sock = clientSock();

    char[] input, buffer = new char[4096], output = "Hello there sailor\n";
    for(int i = 0; i < n; i++)
    {
        int len, total, start;
        if((len = sock.send(output)) == Socket.ERROR)
        {
            fwritefln(stderr,"client/write");
            break;
        }
        while((len = sock.receive(buffer)) > 0)
        {
            total += len;
            input.length = total;
            input[start..total] = buffer[0..len];
            if(input[total - 1] == '\n') break;
            start = total;
        }
        if(input != output || len == Socket.ERROR)
        {
            fwritefln(stderr,"client/read: ",input," ne \n",output);
            break;
        }
    }

    sock.close();

    return(0);
}

Socket serverSock()
{
    Socket sock = new TcpSocket();
    sock.bind(new InternetAddress(InternetAddress.PORT_ANY));
    port = (cast(InternetAddress)sock.localAddress()).port;
    sock.listen(10);
    return(sock);
}

Socket clientSock()
{
    Socket sock = new TcpSocket();
    sock.connect(new InternetAddress(port));
    return(sock);
}
