package DateTime::Format::Epoch::ANSIDate;

use strict;
use warnings;
use vars qw($VERSION @ISA);

$VERSION = '0.01';

use DateTime;
use DateTime::Format::Epoch;

@ISA = qw/DateTime::Format::Epoch/;

my $epoch = DateTime->new(
    year => 1600,
    month => 12,
    day => 31
    );

sub new {
    my $class = shift;
    return $class->SUPER::new(
	epoch => $epoch,
	unit => 1/86400,
	type => 'int',
	skip_leap_seconds => 1);
}

1;
__END__
=head1 NAME

DateTime::Format::Epoch::ANSIDate - Perl extension for converting DateTimes to/from ANSI Date

=head1 SYNOPSIS

  use DateTime::Format::Epoch::ANSIDate;
  
  my $dt = DateTime::Format::Epoch::ANSIDate->parse_datetime( $count );

  DateTime::Format::Epoch::ANSIDate->format_datetime($dt);
  # $count

  my $formatter = DateTime::Format::Epoch::ANSIDate->new();
  my $dt2 = $formatter->parse_datetime( $count );
  $formatter->format_datetime($dt2);

=head1 DESCRIPTION

This module can convert a DateTime object (or any object that can be
converted to a DateTime object) to the Ansi Date count. See
L<DateTime::Format::Epoch::ANSIDate> for a description.

=head1 METHODS

Most of the methods are the same as those in L<DateTime::Format::Epoch>.
The only difference is the constructor.

=over 4

=item * new()

Constructor of the formatter/parser object. It has no parameters.

=back

=head1 SEE ALSO


=head1 AUTHOR

Julio Molina Soler, E<lt>julio.molina@telenet.beE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2013 by Julio Molina Soler

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.16.3 or,
at your option, any version of Perl 5 you may have available.


=cut
