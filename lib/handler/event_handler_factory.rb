require File.expand_path(File.dirname(__FILE__) + '/registration_event_handler')
require File.expand_path(File.dirname(__FILE__) + '/purchase_event_handler')

class EventHandlerFactory

  def self.create event, user
    return RegistrationEventHandler.new if event == :registration_event
    return PurchaseEventHandler.new(user) if event == :purchase_event

    throw "Event #{event} handler cannot be found!"
  end

end
