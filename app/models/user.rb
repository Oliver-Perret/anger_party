class User < ApplicationRecord
  has_many :places

  validates :name, presence: true, length: {minimum: 3}
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A.*@.*\.com\z/ }
  validates :age, presence: true

end


