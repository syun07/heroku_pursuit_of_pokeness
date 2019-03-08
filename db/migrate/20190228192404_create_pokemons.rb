class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type
      t.integer :hp
      t.string :region
      t.string :front
      t.string :back

      t.timestamps
    end
  end
end
