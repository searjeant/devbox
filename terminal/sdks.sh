# Language SDKs and related.
#
# I have completely abandoned mise for the time being. Mise is a clever 
# and well-designed utility but requires more effort to understand and use
# than I want to invest at the moment.

source terminal/install-go
source terminal/install-jdk
source terminal/install-asdf
# Must run these in new shell to pick up asdf. These scripts must not have 
# any sudo commands in them - the sudo password won't propagate.
bash terminal/install-erlang
bash terminal/install-elixir

# source terminal/install-scala
