package TenyBBS::DB;
use strict;
use warnings;
use utf8;
use parent qw(Teng);

__PACKAGE__->load_plugin('Count');
__PACKAGE__->load_plugin('Replace');
__PACKAGE__->load_plugin('Pager');

sub show_all {
    my ($self) = @_;
    # my $row = $self->do(q{select * from bbs where id = 1});
    my @entries = $self->search(
        'bbs',
        {},
        # {'threadid' => 1},
        { order_by => {'id' => 'DESC'} }
	);
	return @entries;
}

sub latest_text {
    my ($self) = @_;
    # my $row = $self->do(q{select * from bbs where id = 1});
    my ($row) = $self->search(
        'bbs',
        {},
        { order_by => {'id' => 'DESC'} }
	);
	# return $row;
    return $row->get_column('text') if ($row);
}
sub insert_memo {
    my ( $self, $name, $text ) = @_;
    $self->insert( 'bbs', { name => $name, text => $text } );
} 1;


