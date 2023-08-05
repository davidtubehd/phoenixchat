This sample project was crafted to exhibit a simple chat application built with Elixir and Phoenix. It incorporates functionalities for sending messages and displaying online users. Additionally, the project aims to showcase the remarkable high-performance capabilities of Elixir and Phoenix.


## Installing / Getting started

To run this project, you will need to install the following dependencies on your system:

* [Elixir](https://elixir-lang.org/install.html)
* [Phoenix](https://hexdocs.pm/phoenix/installation.html)

To get started, run the following commands in your project folder:

```shell
mix deps.get  # installs the dependencies
mix ecto.create  # creates the database.
mix ecto.migrate  # run the database migrations.
mix phx.server  # run the application.
```

Open multiple browser tabs with the following URLs:

    http://localhost:4000/?name=Chris
    http://localhost:4000/?name=David
    http://localhost:4000/?name=Daniel
    http://localhost:4000/?name=Jim

Check the online users and sent message in each tab to see the chat messages sent by different users.

Close the tabs to see the change for the online users.

## Unit and integration tests

The test involves integration testing, simulating 1000 users accessing the chat application and sending one message each.

To run the test, ChromeDriver should be installed with the command in macOS:brew install cask chromedriver, for the installation in other platforms, see the documenations (https://chromedriver.chromium.org).

To run the tests for this project, simply run in your terminal:

```shell
mix test
```

When the testing is running, open an browser with the url http://localhost:4002 to see the messages sent by 1000 users.

## Performance test

The performance could be tested with wrk, it can be installed with command in MacOS: brew install wrk, for the installation in other platforms

```shell
git clone --depth=1 https://github.com/wg/wrk.git
cd wrk
make -j
```

To run the performance tests for this project, simply run in your terminal:

```shell
mix phx.server
```

then open a new terminal to run the command:

```shell
wrk -t12 -c4000 -d30s http://127.0.0.1:4000/?name=David
```

References:

* [Phoenix Channel] (https://hexdocs.pm/phoenix/channels.html)
* [Phoenix Presence] (https://hexdocs.pm/phoenix/presence.html)


