use v6.*;

use Scalar::Util <isvstring>;
use Test;

plan 3;

ok defined(&isvstring), 'isvstring defined';

ok isvstring(v6.c), 'is v6.c a vstring';
nok isvstring("foo"), 'is foo NOT a vstring';

# vim: expandtab shiftwidth=4
