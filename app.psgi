#!/usr/bin/perl
    
use Dancer2;

get '/hello' => sub {
    return 'Hi there!'
};


get '/foo/bar' => sub {
    return "I am get to /foo/bar. you just told me: ".query_parameters->get('greeting')
};

post '/bar/baz' => sub {
    return "I am post to /bar/baz. you just told me: goodbye"
};

post '/send_cookie' => sub {

    my $cookie = cookies->{name};
    return $cookie->value;
};

dance;

