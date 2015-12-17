require 'mellanoxconfig'
module Puppet::Parser::Functions
  newfunction(:mlnx_opensmd_disable, :type => :rvalue, :arity => 0, :doc => <<-EOD
  EOD
  ) do |arg|
    mlnx = Mellanoxconfig.new()
    return mlnx.opensmd.disable()
  end
end
