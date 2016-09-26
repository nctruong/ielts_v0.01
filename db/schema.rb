ActiveRecord::Schema.define(version: 20160813085620) do

  create_table "oauths", force: :cascade do |t|
    t.string   "provider",         limit: 255
    t.string   "uid",              limit: 255
    t.string   "name",             limit: 255
    t.string   "oauth_token",      limit: 255
    t.string   "oauth_expires_at", limit: 255
    t.integer  "student_id",       limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "username",      limit: 255
    t.string   "password",      limit: 255
    t.string   "sex",           limit: 255
    t.string   "phone",         limit: 255
    t.string   "email",         limit: 255
    t.string   "avatar",        limit: 255
    t.datetime "joined_date"
    t.integer  "student_level", limit: 4
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.datetime "birthday"
    t.string   "country",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
