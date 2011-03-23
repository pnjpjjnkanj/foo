require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../../lib/reward')

describe Reward do
  before(:each) do
    @reward = Reward.new
    @user = User.create(:name => 'John Doe')
  end

  it "should make reward for registration" do
    @reward.fire(@user, :registration_event)

    Account.where(:debitor_id => @user.id, :operation_type_id => Operation::REWARD_REGISTRATION).sum(:ammount).should == 10
  end

  it "should receive set of events and make multiple rewards" do
    @reward.fire(@user, :registration_event)
    @reward.fire(@user, :purchase_event)

    Account.where(:debitor_id => @user.id).sum(:ammount).should == 15
  end

  it "should make reward for first purchase" do
    @reward.fire(@user, :purchase_event)
    @reward.fire(@user, :purchase_event)
      
    Account.where(:debitor_id => @user.id).sum(:ammount).should == 5
  end
end

