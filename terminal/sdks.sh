# Language SDKs and related.
# depends on mise being installed - see devbox/terminal/mise.sh

mise use --global java@latest
mise use --global go@latest
mise use --global node@lts

# Make the Erlang / Elixir installs separate scripts which we run in a
# new shell which will have javac on its PATH, so the Erlang jinterface stuff
# should be installed.
bash -c terminal/install-erlang
bash -c terminal/install-elixir

# # Note that the elixir install depends on Erlang being installed and activated
# mise use --global erlang 
# # . /home/roger/.local/share/mise/installs/erlang/27.2/activate
# mise use --global elixir
# # The next line installs Hex locally
# # See: https://hexdocs.pm/mix/1.18.1/Mix.Tasks.Local.Hex.html
# mise x elixir -- mix local.hex --force


# Install after Java SDK.  Because the terminal.sh enumerates the .sh files 
# in alphabetical order I must either create a .sh file which sorts after sdks.sh
# or do something like this:
#bash -c ./install-scala
# UPDATE: I have decided to take this out of devbox and run it manually.
# Two reasons:
# 1. Coursier can also mange JVM versions. This conflicts with mise.
# 2. cs setup will ask the user to make choices. I'd like devbox to be a hands-off
#    installer for all of the basics, requiring no (or very little) intervention.
# 
