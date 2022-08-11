class Freebie < ActiveRecord::Base
    # singular
    belongs_to :dev
    belongs_to :company

    # returns the Dev instance for this Freebie
    def dev
        self.dev
    end
    # returns the Company instance for this Freebie
    def company
        self.company
    end

    # should return a string formatted as follows:
    # {insert dev's name} owns a {insert freebie's item_name} 
    # from {insert company's name}
    def print_details
        "#{self.dev.name} owns a #{self.item_name} #{self.company.name}"
    end

end
