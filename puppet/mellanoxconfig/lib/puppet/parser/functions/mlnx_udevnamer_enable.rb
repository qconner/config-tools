require 'mellanoxconfig'
module Puppet::Parser::Functions
  newfunction(:mlnx_udevnamer_enable, :type => :rvalue, :arity => 0, :doc => <<-EOD
  EOD
  ) do |arg|
    mlnx = Mellanoxconfig.new()
    return mlnx.udevnamer.enable()
  end
end
