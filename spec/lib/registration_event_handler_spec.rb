require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../../lib/handler/registration_event_handler')

describe RegistrationEventHandler do
  before(:each) do
    @registration_event_handler = RegistrationEventHandler.new
  end

  it "should translate event to reward" do
    @registration_event_handler.fire[:ammount].should == 10
  end
end