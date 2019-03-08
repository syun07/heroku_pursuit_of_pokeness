class AddKindToPokemons < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :kind, :string
  end
end
