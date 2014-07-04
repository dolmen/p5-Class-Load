package # hide from PAUSE
    Test::Class::Load;

use strict;
use warnings;
use Import::Into;

use Class::Load::PP;

$ENV{CLASS_LOAD_IMPLEMENTATION} = 'PP';

require Class::Load;

sub import {
    shift;
    Class::Load->import::into(1, @_);
}

1;
