# NAME

Getopt::Constraint::Mouse - A command line options processor uses Mouse's type constraints

# SYNOPSIS

    # in your script
    use Getopt::Constraint::Mouse;

    my $options = Getopt::Constraint::Mouse->get_options(
        foo => +{ isa => 'Str', required => 1     },
        bar => +{ isa => 'Str', default  => 'Bar' },
    );

    my $foo = $options->{foo};
    my $bar = $options->{bar};

# SEE ALSO

[MouseX::Getopt](http://search.cpan.org/perldoc?MouseX::Getopt)

# LICENSE

Copyright (C) Hiroki Honda.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Hiroki Honda <cside.story@gmail.com>
