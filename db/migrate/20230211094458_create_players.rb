class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.integer :api_id
      t.string :full_name
      t.string :commun_name
      t.string :position
      t.integer :team_api_id

      t.timestamps
    end
  end
end
