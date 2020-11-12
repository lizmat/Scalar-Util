use v6.*;

use Scalar::Util <refaddr>;
use Test;

plan 3;

ok defined(&refaddr), 'refaddr defined';

ok refaddr(42) ~~ Int, 'does refaddr give an Int';
is refaddr(42), refaddr(42), 'is refaddr consistent';

# vim: expandtab shiftwidth=4
