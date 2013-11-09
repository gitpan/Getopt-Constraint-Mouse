# NAME

Getopt::Constraint::Mouse - A command line options processor uses Mouse's type constraints

# SYNOPSIS

in your script

    #!perl
    use Getopt::Constraint::Mouse;

    my $options = Getopt::Constraint::Mouse->get_options(
        foo => +{
            isa           => 'Str',
            required      => 1,
            documentation => 'Blah Blah Blah ...',
        },
        bar => +{
            isa           => 'Str',
            default       => 'Bar',
            documentation => 'Blah Blah Blah ...',
        },
    );

    print $options->{foo}, "\n";
    print $options->{bar}, "\n";

use it

    $ perl ./script.pl --for=Foo --bar=Bar
    Foo
    Bar

    $ perl ./script.pl
    Mandatory parameter 'foo' missing in call to (eval)

    usage: script.pl [-?] [long options...]
    	-? --usage --help  Prints this usage information.
    	--foo              Blah Blah Blah ...
    	--bar              Blah Blah Blah ..

# QUESTIONS

## What are supported Types?

See [MouseX::Getopt\#Supported-Type-Constraints](http://search.cpan.org/perldoc?MouseX::Getopt\#Supported-Type-Constraints) for details.

## What are supported Options?

See [MouseX::Getopt\#METHODS](http://search.cpan.org/perldoc?MouseX::Getopt\#METHODS) for details.

# SEE ALSO

[MouseX::Getopt](http://search.cpan.org/perldoc?MouseX::Getopt)

# LICENSE

Copyright (C) Hiroki Honda.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Hiroki Honda <cside.story@gmail.com>
