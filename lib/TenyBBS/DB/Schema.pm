package TenyBBS::DB::Schema;
use strict;
use warnings;
use utf8;

use Teng::Schema::Declare;

base_row_class 'TenyBBS::DB::Row';

table {
    name 'bbs';
    pk 'id';
    columns qw(id threadid name text created_date modified_date);
};

1;
