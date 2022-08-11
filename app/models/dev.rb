class Dev < ActiveRecord::Base
    # plural
    has_many :freebies
    has_many :companies, through: :freebies

    # returns a collection of 
    # all the freebies that the Dev has collected
    def freebies
        self.freebies
    end

    # returns a collection of all the 
    # companies that the Dev has collected freebies from
    def companies
        self.companies
    end

    # accepts an item_name (string) and returns true if 
    # any of the freebies associated with the dev has that 
    # item_name, otherwise returns false
    def received_one?(item_name)
        self.freebies.any? do |freebie|
            freebie.item_name == item_name
        end
    end

    # 
    def give_away(dev, freebie)
        freebie.update(dev: dev) unless freebie.dev != self
    end

end
