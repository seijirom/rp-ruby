class RP
  def initialize ip
    @socket = TCPSocket.open ip, 5000
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
