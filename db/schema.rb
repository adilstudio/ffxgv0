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
  create_table "countries", charset: "utf8mb4", force: :cascade do |t|
    t.string "country_code"
    t.string "name"
    t.string "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", charset: "utf8mb4", force: :cascade do |t|
    t.string "seasons"
    t.integer "league_api_id"
    t.string "name"
    t.string "type"
    t.string "logo"
    t.string "country_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "api_id"
    t.string "full_name", limit: 50
    t.string "commun_name", limit: 50, collation: "utf8mb4_general_ci"
    t.string "position", limit: 50, collation: "utf8mb4_general_ci"
    t.integer "team_api_id"
  end

  create_table "team_events", charset: "utf8mb4", force: :cascade do |t|
    t.string "type"
    t.string "detail"
    t.text "comments"
    t.integer "time_elapsed"
    t.float "time_extra"
    t.integer "fixture_api_id"
    t.integer "team_api_id"
    t.integer "player_api_id"
    t.integer "assist_player_api_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_stats", charset: "utf8mb4", force: :cascade do |t|
    t.integer "offsides"
    t.float "games_minutes"
    t.integer "games_number"
    t.string "games_position"
    t.float "games_rating"
    t.boolean "games_captain"
    t.boolean "games_substitute"
    t.integer "shots_total"
    t.integer "shots_on"
    t.integer "goals_total"
    t.integer "goals_conceded"
    t.integer "goals_assists"
    t.integer "goals_saves"
    t.integer "passes_total"
    t.integer "passes_key"
    t.integer "passes_accuracy"
    t.integer "tackles_total"
    t.integer "tackles_blocks"
    t.integer "tackles_interceptions"
    t.integer "duels_total"
    t.integer "duels_won"
    t.integer "dribbles_attempts"
    t.integer "dribbles_success"
    t.integer "dribbles_past"
    t.integer "fouls_drawn"
    t.integer "fouls_committed"
    t.integer "cards_yellow"
    t.integer "cards_red"
    t.integer "penalty_won"
    t.integer "penalty_commited"
    t.integer "penalty_scored"
    t.integer "penalty_missed"
    t.integer "penalty_saved"
    t.integer "player_api_id"
    t.integer "team_api_id"
    t.integer "fixture_api_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", charset: "utf8mb4", force: :cascade do |t|
    t.integer "team_api_id"
    t.string "name"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
