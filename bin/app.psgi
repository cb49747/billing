#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use BillingWeb::App;

BillingWeb::App->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use BillingWeb::App;
use Plack::Builder;

builder {
    enable 'Deflater';
    BillingWeb::App->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use BillingWeb::App;
use BillingWeb::App_admin;

use Plack::Builder;

builder {
    mount '/'      => BillingWeb::App->to_app;
    mount '/admin'      => BillingWeb::App_admin->to_app;
}

=end comment

=cut

