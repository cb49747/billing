package BillingWeb::App;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    template 'index' => { 'title' => 'BillingWeb::App' };
};

get '/myname' => sub {
    template 'myname' => { 'title' => 'MyName' };
};

true;
