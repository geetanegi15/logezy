class Merchant < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["address", "confirm_password", "created_at", "email", "first_name", "id", "last_name", "password", "phone_number", "postcode", "updated_at"]
  end
end
