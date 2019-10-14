require_relative 'events/event_sender.rb'
require_relative 'events/event.rb'
require_relative 'events/event_receiver.rb'
require_relative 'person.rb'
require_relative 'animal.rb'

jake = Person.new("Jake")
derek = Person.new("Derek")
tom = Animal.new("Tom")
bjork = Animal.new("Bjork")
jake.hunts
tom.hunts_everything

#puts EventReceiver.sorted_alls