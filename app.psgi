#!/usr/bin/perl
    
use Dancer2;

get '/hello' => sub {
    return 'Hi there!'
};


get '/foo/bar' => sub {
    return "I am get to /foo/bar. you have just told: ".query_parameters->get('greeting')
};

post '/bar/baz' => sub {
    return "I am post to /bar/baz. you have just told: ".params->{'greeting'}
};

post '/send_cookie' => sub {

    my $cookie = cookies->{name};
    return $cookie->value;
};

dance;

