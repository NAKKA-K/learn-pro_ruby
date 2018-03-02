class Ticket
    attr_reader :fare, :stamp_at

    def initialize(fare)
        @fare = fare
        @stamp_at
    end

    def stamp(name)
        @stamp_at = name
    end
end