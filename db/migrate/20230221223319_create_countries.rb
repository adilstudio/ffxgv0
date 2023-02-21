class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :country_code
      t.string :name
      t.string :flag

      t.timestamps
    end
  end
end
