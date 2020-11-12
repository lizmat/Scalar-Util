use v6.*;

use Scalar::Util <readonly>;
use Test;

plan 4;

ok defined(&readonly), 'readonly defined';

my $a = 42;
nok readonly($a), 'is $a NOT readonly';
ok readonly(42),  'is 42 readonly';

my $b := 666;
ok readonly($b), 'is $b readonly';

# vim: expandtab shiftwidth=4
