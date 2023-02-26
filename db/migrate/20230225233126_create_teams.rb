class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.integer :api_id
      t.string :name
      t.string :logo

      t.timestamps
    end
  end
end
