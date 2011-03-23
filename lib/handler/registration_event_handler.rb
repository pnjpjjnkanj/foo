require File.expand_path(File.dirname(__FILE__) + '/event_handler')
require File.expand_path(File.dirname(__FILE__) + '/../operation')

class RegistrationEventHandler < EventHandler
  REGISTRATION_REWARD_USD_AMMOUNT = 10

  def initialize
  end

  def fire
    {:operation => Operation::REWARD_REGISTRATION, :ammount => REGISTRATION_REWARD_USD_AMMOUNT}
  end
end
