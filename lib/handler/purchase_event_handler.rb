require File.expand_path(File.dirname(__FILE__) + '/event_handler')
require File.expand_path(File.dirname(__FILE__) + '/../operation')

class PurchaseEventHandler < EventHandler
  FIRST_PURCHASE_REWARD_USD_AMMOUNT = 5

  def initialize user
    @user = user
  end

  def fire
    if @user.nil? || Account.where(:debitor_id => @user.id, :operation_type_id => Operation::REWARD_1ST_PURCHASE).sum(:ammount) > 0
      return {:operation => nil, :ammount => 0}
    end

    {:operation => Operation::REWARD_1ST_PURCHASE, :ammount => FIRST_PURCHASE_REWARD_USD_AMMOUNT}
  end
end
