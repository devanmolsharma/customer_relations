class Customer < ApplicationRecord
    validates :full_name , presence: true;
    
    def self.ransackable_attributes(auth_object = nil)
        ["email", "full_name", "notes", "phone_number"]
      end
end
