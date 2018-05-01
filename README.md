# DSLDSL

A DSL that compiles to iptables rules for less messy firewall router definitions

**You probably don't want to use this right now, though it does prove useful for my needs**

**Abandon hope all ye who enter here.**

Example:

`ROUTE EXT TCP PORT S_HTTP_TCP TO_WEB` routes the standard http tcp port to the machine 'web'

## Usage
- copy `rules.fw.example` to `rules.fw` and edit it to fit your needs
- copy `config.in.example` to `config.in` and edit it to fill in the options
- create/edit the data sources in data.d (or don't)
- mark the target data.d files executable (some are disabled by default)
- `make` / `make install`
