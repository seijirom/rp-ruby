require 'socket'
require './rp_socket'

rp = RP.new
rp.send "ANALOG:PIN AOUT0, 0.10"
rp.send "ANALOG:PIN AOUT1, 0.20"
rp.send "ANALOG:PIN AOUT2, 0.30"
rp.send "ANALOG:PIN AOUT3, 0.40"
sleep 5
rp.close
puts 'closed'
