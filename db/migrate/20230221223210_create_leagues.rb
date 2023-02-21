class CreateLeagues < ActiveRecord::Migration[7.0]
  def change
    create_table :leagues do |t|
      t.string :seasons
      t.integer :league_api_id
      t.string :name
      t.string :type
      t.string :logo
      t.string :country_code

      t.timestamps
    end
  end
end
