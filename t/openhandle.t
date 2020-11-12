use v6.*;

use Scalar::Util <openhandle>;
use Test;

plan 4;

ok defined(&openhandle), 'openhandle defined';

my @a;
my %h;

is-deeply openhandle($*IN), $*IN, 'did we get the right handle';
$*IN.close;
is-deeply openhandle($*INi), Nil, 'did we get Nil on closed handle';
is-deeply openhandle("foo"), Nil, 'non-handle should produce Nil';

# vim: expandtab shiftwidth=4
