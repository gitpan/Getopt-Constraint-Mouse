use strict;
use warnings;
use Test::More;
use Getopt::Constraint::Mouse;

local @ARGV = qw(--in=foo --out=bar);
{
    package MyApp;
    use Mouse;
    with 'MouseX::Getopt';
    has 'out' => ( is => 'ro', isa => 'Str', required => 1 );
    has 'in'  => ( is => 'ro', isa => 'Str', required => 1 );
}

my $app = MyApp->new_with_options;
my $opts = Getopt::Constraint::Mouse->get_options(
    out => +{ isa => 'Str', required => 1 },
    in  => +{ isa => 'Str', required => 1 },
);

is_deeply \%$app, \%$opts;

done_testing;
