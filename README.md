### Breweryhaus


### Requirements

* Install Ruby Version Manager(RVM) to have multiple versions of ruby available.
* Ruby `2.6.x`
* `bundle install`
* `bundle exec rackup`

### Execution

* `bundle exec rackup` - This will start a mini-webserver and listens in port 9292

```shell
  [2020-08-09 17:33:39] INFO  WEBrick 1.4.2
  [2020-08-09 17:33:39] INFO  ruby 2.6.6 (2020-03-31) [x86_64-linux]
  [2020-08-09 17:33:39] INFO  WEBrick::HTTPServer#start: pid=27685 port=9292
```

* Change the zip code and this will return a list of breweries in the location `curl http://localhost:9292/brewery/22151`



