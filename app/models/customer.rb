class Customer < ApplicationRecord
  validates :full_name, presence: true
  validates :email_address, uniqueness: true, allow_blank: true
end
