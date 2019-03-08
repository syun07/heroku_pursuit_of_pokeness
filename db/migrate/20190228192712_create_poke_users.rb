class CreatePokeUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :poke_users do |t|
      t.integer :user_id
      t.integer :pokemon_id

      t.timestamps
    end
  end
end
