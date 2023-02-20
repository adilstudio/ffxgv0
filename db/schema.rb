# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_11_094458) do
  create_table "players", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "api_id"
    t.string "full_name", limit: 50
    t.string "commun_name", limit: 50, collation: "utf8mb4_general_ci"
    t.string "position", limit: 50, collation: "utf8mb4_general_ci"
    t.integer "team_api_id"
  end

end