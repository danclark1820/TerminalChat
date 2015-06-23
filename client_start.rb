require './client.rb'

client_server = TCPSocket.open("localhost", 3000)
Client.new(client_server)
