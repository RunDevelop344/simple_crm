class Customer < ApplicationRecord
  has_one_attached :image

  validates :full_name, presence: true
  validates :email_address, uniqueness: true, allow_blank: true

  # ✅ Allow searchable columns (Ransack requirement)
  def self.ransackable_attributes(auth_object = nil)
    ["id", "full_name", "phone_number", "email_address", "notes", "created_at", "updated_at"]
  end

  # ✅ Allow associations (needed even if none)
  def self.ransackable_associations(auth_object = nil)
    []
  end
end