package BillingWeb::App;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    template 'index' => { 'title' => 'BillingWeb::App' };
};

get '/myname' => sub {
    my $fname  = query_parameters->get('fname');
    my $lname  = query_parameters->get('lname');
    template 'myname' => { 'title' => 'MyName', 'fname' => $fname, 'lname' => $lname };
};

true;
