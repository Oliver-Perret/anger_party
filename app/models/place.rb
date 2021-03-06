class Place < ApplicationRecord
  belongs_to :user

  validates :title, presence: true,  uniqueness: true
  validates :address, presence: true,  uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  validates :destroy_pack, presence: true, inclusion: { in: ["Soil", "Damage", "Destroy"] }
  validates :category, presence: true, inclusion: { in: ["House", "Field", "Hut", "Wharehouse", "Flat", "Castle", "Shop"] }
  validates :rate, presence: true, inclusion: { in: [1,2,3,4,5] }

end
