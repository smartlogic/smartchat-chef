ENV['LANGUAGE'] = ENV['LANG'] = ENV['LC_ALL'] = "en_US.utf8"
include_recipe "postgresql::server"
package "postgresql-contrib-9.1"
