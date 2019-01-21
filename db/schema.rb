# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_21_092123) do

  create_table "booking_slots", force: :cascade do |t|
    t.integer "booking_id"
    t.integer "slot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_slots_on_booking_id"
    t.index ["slot_id"], name: "index_booking_slots_on_slot_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "hours"
    t.string "sub_total"
    t.string "studio_time_fee"
    t.string "total_amount"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "paymentforms", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "firstname"
    t.string "lastname"
    t.string "bank_account_number"
    t.string "bank_Id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "name"
    t.integer "imageable_id"
    t.string "imageable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable_type_and_imageable_id"
  end

  create_table "slots", force: :cascade do |t|
    t.datetime "starttime"
    t.datetime "endtime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studios", force: :cascade do |t|
    t.string "name", null: false
    t.string "details", null: false
    t.string "minimum_booking", null: false
    t.string "type"
    t.string "hours_of_operation"
    t.string "past_clients"
    t.string "audio_samples"
    t.string "amenities"
    t.string "equipments"
    t.string "rules", null: false
    t.float "price_per_hour", null: false
    t.boolean "audio_engineer"
    t.string "imageable_type"
    t.integer "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_studios_on_imageable_type_and_imageable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname", null: false
    t.string "lastname", null: false
    t.string "email", null: false
    t.string "contact", null: false
    t.string "bio"
    t.string "website_url"
    t.string "facebook_url"
    t.string "twitter_handle"
    t.string "instagram_handle"
    t.string "streanplayer_url"
    t.string "imageable_type"
    t.integer "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_users_on_imageable_type_and_imageable_id"
  end

end
