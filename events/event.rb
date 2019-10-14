#You make Events to call out and send commands to specific objects

#The type variable is for determining the behavior you want to perform,
#make a symbol representing what you will check for when performing a
#specific action

#Targets is currently a single string or symbol that will call out any
#object with an identical tag

#choice doesn't do anuything right now and defaults to nil, ignore it

class Event
        attr_reader :type, :targets, :choice

        def initialize(sender, type, targets, priority)
                @type = type
                @targets = targets
                @priority = priority
        end
        
end
