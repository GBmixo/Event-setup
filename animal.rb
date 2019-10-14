class Animal
        attr_reader :name, :self
        attr_accessor :tags

                @@all = []

        def initialize(name)
               @is_animal = EventReceiver.new("animal", self, 6)
               @name = name
               @tags = []
               @tags << @animal
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
                puts "I, an animal named #{self.name}, will hunt!"
                EventSender.make_event(self, :collision, "animal")
        end

        def hunts_everything
                puts "I, an animal named #{self.name}, will hunt everything!"
                EventSender.make_event(self, :collision, "person")
                EventSender.make_event(self, :collision, "animal")
        end

        def hunted
                puts "I an animal named #{self.name}, am hunted!"
        end

end