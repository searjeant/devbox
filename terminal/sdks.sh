# Language SDKs and related.
#
# I have completely abandoned mise for the time being. Mise is a clever 
# and well-designed utility but requires more effort to understand and use
# than I want to invest at the moment.

sdks="go jdk asdf erlang elixir"

source terminal/install-go
source terminal/install-jdk
source terminal/install-clojure

# source terminal/install-asdf
#
# Must run following in new shell to pick up asdf. These scripts must not have 
# any sudo commands in them - the sudo password won't propagate.
# bash -c terminal/install-erlang
# bash -c terminal/install-elixir

# Don't run this from the script tree.
# source terminal/install-scala
