

ActiveRecord::Schema.define(version: 2021_06_06_172411) do

  create_table "hikes", force: :cascade do |t|
    t.integer "user_id"
    t.string "location"
    t.integer "distance"
    t.string "terrain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
