#Use this inside an object or whatever to make and send an event to
#all relevant recievers

#Read the event class for pointers on variable definitions

class EventSender
        def self. make_event(sender, type, targets, priority = 0)
               new_event =  Event.new(sender, type, targets, priority)
                send_event(new_event)
        end

        def self.send_event(event)
                puts "Sending event!"
                EventReceiver.receive_event(event)
        end
                
end