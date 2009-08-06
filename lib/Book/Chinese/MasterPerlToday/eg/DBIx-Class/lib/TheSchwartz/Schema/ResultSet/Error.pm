package TheSchwartz::Schema::ResultSet::Error;
our $VERSION = '0.01_01';


use strict;
use warnings;
use base 'DBIx::Class::ResultSet';

sub failure_log {
    my ( $self, $jobid ) = @_;

    my $rs = $self->search( {
        jobid => $jobid
    }, {
        columns => ['message']
    } );

    my @failures;
    while (my $r = $rs->next) {
        push @failures, $r->message;
    }

    return @failures;
}

sub failures {
    return scalar shift->failure_log(@_);
}

1;
