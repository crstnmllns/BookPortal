class Book < ApplicationRecord
  has_many :purchase_rentings
  has_many :users, through: :purchase_rentings
end
