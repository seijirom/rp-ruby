require 'socket'
require './rp_socket'

rp = RP.new '192.168.0.5'

rp.send "ANALOG:PIN AOUT3, 1.60"
volts = rp.query "ANALOG:PIN? AIN3"
puts volts
rp.close
