#Define these when initializing objects

#You can also make instance methods to add more specific tags
#to a single object

#in the recieve_event method, write cases to find when 
#event.targets matches reciever.tag, then check to see what
#event type is defined  and act accordingly on the reciever.owner
#object

#if the reciever priority is less than or equal to the event priority
#here, the event will apply to the receiver's owner

class EventReceiver
        attr_accessor :interactable_events, :priority
        attr_reader :tag,  :owner

        @@sorted_alls = {}
        @@all = []

        def initialize(tag, owner, priority = 0)
                @tag = tag
                @owner = owner
                @priority = priority
                @@all << self
                if @@sorted_alls.has_key?(tag) == false
                        @@sorted_alls[tag] = []
                end
                @@sorted_alls[tag] << self
        end

        def self.all
                @@all
        end

        def self.sorted_alls
                @@sorted_alls
        end

        def self.receive_event(event)
                @@sorted_alls[event.targets].each do |reciever|
                        #GIVE YOUR CLASSES EVENT_CALL METHODS
                        if event.priority <= reciever.priority
                                reciever.owner.event_call(event)
                        end
                end

        end
end