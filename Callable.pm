package Symbol::Callable;
use 5.006;
use strict;
require Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(probesym);
our $VERSION = '0.01';

sub probesym {
    my $pkg = shift || 'main';
    my @s = grep { defined $_ } map { UNIVERSAL::can($pkg, $_) and $_ } eval 'values %'.($pkg).'::';
    wantarray ? @s : \@s;
}

1;
__END__
# Below is stub documentation for your module. You better edit it!

=head1 NAME

Symbol::Callable - Probing callable entries in symbol table

=head1 SYNOPSIS

    use Symbol::Callable;
    @sub_names = probesym('main');

=head1 DESCRIPTION

This module exports a utility to list existent subroutines in a package.

    probesym('main');

It returns an array or a reference to an array of existent subroutines in a package. If no package's name is given, C<main> is assumed.

=head1 COPYRIGHT

xern E<lt>xern@cpan.orgE<gt>

This module is free software; you can redistribute it or modify it under the same terms as Perl itself.

=cut
