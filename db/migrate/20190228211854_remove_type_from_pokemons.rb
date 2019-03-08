class RemoveTypeFromPokemons < ActiveRecord::Migration[5.1]
  def change
    remove_column :pokemons, :type, :string
  end
end
