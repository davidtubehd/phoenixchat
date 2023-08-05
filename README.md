# phoenixchat

This is a very simple, and bare-bones chatting platform made using elixir.
this program has a simple chat window and another text box displaying who is online
this program works by pushing events through sockets and then updating html to contain these changes.


pre-requisites:
 have elixir installed
 install phoenix
 set up postresql

To install elixir: https://elixir-lang.org/

to install phoenix: https://www.phoenixframework.org/

how to run:
1 - cd into the folder that this program is located into
2 - cd (program folder name)
3 - mix phx.server
4 -  the program should be up and running at localhost

Feature testing:
https://hexdocs.pm/wallaby/readme.html
brew install chromedriver

then run mix test

Load testing:
https://github.com/wg/wrk
brew install wrk
wrk -t12 -c400 -d30s http://localhost:4000/

Performance Stats:
----------------------------------------------------------------------
12 threads and 400 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   282.95ms   93.13ms 835.57ms   76.31%
    Req/Sec    70.86     33.23   250.00     73.01%
  25258 requests in 30.10s, 51.78MB read
  Socket errors: connect 157, read 108, write 0, timeout 0
  Non-2xx or 3xx responses: 446
Requests/sec:    839.09
Transfer/sec:      1.72MB
-----------------------------------------------------------------------
