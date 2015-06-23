require './server.rb'

server = Server.new(3000, "localhost")
server.run
