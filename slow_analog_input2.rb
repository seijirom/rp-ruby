require 'socket'

class RP
  def initialize
    @socket = TCPSocket.open '192.168.0.5', 5000
  end

  def send command
    @socket.puts command + "\r" 
    @socket.flush
  end

  def query command
    @socket.puts command + "\r"
    @socket.flush
    @socket.gets
  end

  def close
    @socket.close
  end
end

rp = RP.new

rp.send "ANALOG:PIN AOUT3, 1.60"
volts = rp.query "ANALOG:PIN? AIN3"
puts volts
rp.close
