class Company < ActiveRecord::Base
    # plural
    has_many :freebies
    has_many :devs, through: :freebies

    # returns a collection of all the freebies for the Company
    def freebies
        self.freebies
    end

    # returns a collection of all the 
    # devs who collected freebies from the Company
    def devs
        self.devs
    end

    # creates a new Freebie instance associated 
    # with this company and the given dev
    def give_freevie(dev, item_name, value)
        Freebie.create(dev: dev, company: self, item_name: item_name, value: value)
    end

    # returns the Company instance with the earliest founding year
    def self.old_company
        Company.all.order(:found_year).first
    end

end
