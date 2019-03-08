class User < ApplicationRecord
  has_many :poke_users
  has_many :pokemons, through: :poke_users
  has_secure_password
  validates :name, uniqueness: { case_sensitive: false }
end
