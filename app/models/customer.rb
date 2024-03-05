class Customer < ApplicationRecord
    validates :full_name , presence: true;
    has_one_attached :image, dependent: :destroy;
    
    def self.ransackable_attributes(auth_object = nil)
        ["email", "full_name", "notes", "phone_number"]
      end

      def self.ransackable_associations(auth_object = nil)
        ["image_attachment", "image_blob"]
      end
end
