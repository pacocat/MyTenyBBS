package TenyBBS::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;

any '/' => sub {
    my ($c) = @_;
    return $c->render('index.tx');
};

get '/memo' => sub {
	my ($c) = @_;
	my @thread_list = $c->db->fetch_threads;
	my @entry_list = $c->db->fetch_entries;
	return $c->render( 'memo.tx', { thread_list => \@thread_list, entry_list => \@entry_list} );
};

post '/memo/insert' => sub {
    my ($c) = @_;
    my $name = $c->req->param('name');
    my $text = $c->req->param('text');
    $c->db->insert_memo($name, $text);
    return $c->redirect('/memo');
};


1;
