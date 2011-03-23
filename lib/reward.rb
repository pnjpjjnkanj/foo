require File.expand_path(File.dirname(__FILE__) + '/handler/event_handler_factory')

class Reward

  APP_ACCOUNT = 0

  def initialize
  end

  def fire user, event
    award = EventHandlerFactory.create(event, user).fire
    Account.create(:operation_type_id => award[:operation], :debitor_id => user.id, :creditor_id => APP_ACCOUNT, :ammount => award[:ammount]) if award[:ammount] > 0
  end
end
