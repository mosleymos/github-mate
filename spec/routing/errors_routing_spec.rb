require 'spec_helper'

describe "Routing errors", :type => :routing do

  it 'return a 404 not found page error' do
    expect(:get => "not_found" ).to route_to(:controller => "errors", :action => "not_found")
  end

  it 'return a 500 server error' do
    expect(:get => "server_error" ).to route_to(:controller => "errors", :action => "server_error")
  end

end
