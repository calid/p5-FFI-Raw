use v5.10;

use strict;
use warnings;

use FFI::Raw;

my $fdim = FFI::Raw -> new(
	'libm.so', 'fdim',
	FFI::Raw::double, # return value
	FFI::Raw::double, # arg #1
	FFI::Raw::double  # arg #2
);

say $fdim -> call(7.0, 2.0);

my $cos = FFI::Raw -> new(
	'libm.so', 'cos',
	FFI::Raw::double, # return value
	FFI::Raw::double  # arg #1
);

say $cos -> call(2.0);

my $fmax = FFI::Raw -> new(
	'libm.so', 'fmax',
	FFI::Raw::double, # return value
	FFI::Raw::double, # arg #1
	FFI::Raw::double  # arg #2
);

say $fmax -> call(2.0, 3.0);
