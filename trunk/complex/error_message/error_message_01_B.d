// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-11-24
// @uri@	news:dm3rs0$2qit$1@digitaldaemon.com

module dstress.complex.error_message.error_message_01_B;

template a()
{
   const real val= 0x1p90;
}

template half(alias f)
{
   const real val = f.val/2;
}

template c(alias f)
{
    static if (f.val > 2.0)  const int val = c!( half!(f) ).val;
}

const int m = c!(a!()).val;

