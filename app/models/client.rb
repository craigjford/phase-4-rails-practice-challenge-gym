class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships

    def total_amount      
        total = 0
        charges_array = self.memberships.map do |membership|
             total = total + membership[:charge]
        end
        total
    end 

end
