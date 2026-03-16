class Customer < ApplicationRecord
  has_one_attached :image  # for ActiveStorage
  validates :full_name, presence: true
  validates :email_address, uniqueness: true, allow_blank: true
end
