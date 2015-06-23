require 'rspec'
require './server.rb'
require 'pry'

describe 'server' do
  before do
    @server = Server.new(9000, "localhost")
  end

  # after do
  #   @server.server.close
  # end

  context '#run' do
    it 'should connect to a tcp socket' do
      expect(@server.server.connect_address.ip_port).to eq 9000
    end
  end

end
