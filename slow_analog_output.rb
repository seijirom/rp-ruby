require 'socket'

socket = TCPSocket.open '192.168.0.5', 5000
socket.puts "ANALOG:PIN AOUT0, 0.10\r"
socket.puts "ANALOG:PIN AOUT1, 0.20\r"
socket.puts "ANALOG:PIN AOUT2, 0.30\r"
socket.puts "ANALOG:PIN AOUT3, 0.40\r"
sleep 5
socket.close
puts 'closed'
