#!/bin/bash 

# Elasticsearch test data
# By Greg Coleman
#
# Set the host to the IP where your Elasticsearch server lives.
# It is probably localhost
#
HOST=localhost

curl -XPUT 'http://$HOST:9200/blog/user/steve' -d '{ "name" : "Steve Martin" }'
curl -XPUT 'http://$HOST:9200/blog/user/annabelle' -d '{ "name" : "Annabelle DeBeers" }'
curl -XPUT 'http://$HOST:9200/blog/user/george' -d '{ "name" : "George Kastanza" }'

curl -XPUT 'http://$HOST:9200/blog/link/1' -d '
{
    "user": "george",
    "link": "" ,
    "title": ""
}'

curl -XPUT 'http://$HOST:9200/blog/link/2' -d '
{
    "user": "steve",
    "link": "http://www.netflix.com" ,
    "title": "Netflix"
}'

curl -XPUT 'http://$HOST:9200/blog/link/3' -d '
{
    "user": "annabelle",
    "link": "http://www.dilbert.com" ,
    "title": "Dilbert"
}'

curl -XPUT 'http://$HOST:9200/blog/link/4' -d '
{
    "user": "george",
    "link": "http://www.imdb.com" ,
    "title": "IMDB"
}'

curl -XPUT 'http://$HOST:9200/blog/link/5' -d '
{
    "user": "steve",
    "link": "http://www.google.com" ,
    "title": "Google"
}'

curl -XPUT 'http://$HOST:9200/blog/link/6' -d '
{
    "user": "annabelle",
    "link": "http://xkcd.com/" ,
    "title": "XKCD"
}'

