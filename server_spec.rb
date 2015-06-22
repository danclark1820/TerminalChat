require 'rspec'
require './server.rb'
require 'pry'

describe 'server' do
  before do
    @server = Server.new(9000, "localhost")
  end

  after do
    @server.server.close
  end

  context '#run' do
    it 'should connect to a tcp server' do
      expect(@server.connections).to_not be_nil
    end
  end

end
