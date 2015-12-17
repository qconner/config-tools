require 'mellanoxconfig'
module Puppet::Parser::Functions
  newfunction(:mlnx_interface_down, :type => :rvalue, :arity => 2, :doc => <<-EOD
  EOD
  ) do |arg|
    if_name = arg[0]
    if_alias = arg[1]
    mlnx = Mellanoxconfig.new()
    return mlnx.interface.down(if_name, if_alias)
  end
end