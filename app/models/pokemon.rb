class Pokemon < ApplicationRecord
  has_many :poke_users
  has_many :users, through: :poke_users
end
