class Person
        attr_reader :name, :self
        attr_accessor :tags

                @@all = []

        def initialize(name)
               @is_person = EventReceiver.new("person", self)
               @name = name
               @tags = []
               @tags << @is_person
                @@all << self
        end

        def self.all
                @@all
        end

        def add_tag(tag)
                
                new_tag = EventReceiver.new(tag, self)
                @tags << new_tag

        end

        def event_call(event)
                if event.type == :collision
                        hunted
                end
        end

        def hunts
                puts "I, a person named #{self.name}, will hunt!"
                EventSender.make_event(self, :collision, "person", 5)
                EventSender.make_event(self, :collision, "animal", 5)
        end

        def hunted
                puts "I, a person named #{self.name}, am hunted!"
        end

end