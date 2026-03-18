class AdminUser < ApplicationRecord
  # Devise modules (ONLY ONCE)
  devise :database_authenticatable,
         :recoverable,
         :rememberable,
         :validatable

  # ✅ Required for ActiveAdmin (Ransack search)
  def self.ransackable_attributes(auth_object = nil)
    ["id", "email", "created_at", "updated_at", "remember_created_at"]
  end

  # ✅ Required even if no associations
  def self.ransackable_associations(auth_object = nil)
    []
  end
end