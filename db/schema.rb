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

ActiveRecord::Schema.define(version: 20170612195208) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "casein_admin_users", force: :cascade do |t|
    t.string   "login",                           null: false
    t.string   "name"
    t.string   "email"
    t.integer  "access_level",        default: 0, null: false
    t.string   "crypted_password",                null: false
    t.string   "password_salt",                   null: false
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.integer  "login_count",         default: 0, null: false
    t.integer  "failed_login_count",  default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotel_bookings", force: :cascade do |t|
    t.integer  "hotel_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "occupied_rooms"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["hotel_id"], name: "index_hotel_bookings_on_hotel_id"
  end

  create_table "hotel_tours", force: :cascade do |t|
    t.integer  "hotel_id"
    t.integer  "tour_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_hotel_tours_on_hotel_id"
    t.index ["tour_id"], name: "index_hotel_tours_on_tour_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string   "hotel_title"
    t.text     "hotel_body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "rooms"
  end

  create_table "subhotels", force: :cascade do |t|
    t.date     "hotel_date"
    t.text     "sub_note"
    t.integer  "hotel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "subtour_id"
    t.index ["hotel_id"], name: "index_subhotels_on_hotel_id"
    t.index ["subtour_id"], name: "index_subhotels_on_subtour_id"
  end

  create_table "subtours", force: :cascade do |t|
    t.date     "departure_date"
    t.text     "sub_note"
    t.integer  "tour_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "hotel_id"
    t.integer  "subhotel_id"
    t.index ["hotel_id"], name: "index_subtours_on_hotel_id"
    t.index ["subhotel_id"], name: "index_subtours_on_subhotel_id"
    t.index ["tour_id"], name: "index_subtours_on_tour_id"
  end

  create_table "tour_bookings", force: :cascade do |t|
    t.integer  "tour_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tour_id"], name: "index_tour_bookings_on_tour_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.text     "tour_itinerary"
    t.text     "tour_inclusions"
    t.string   "tour_ticket_notes"
    t.string   "tour_notes"
    t.text     "tour_important_notes"
    t.string   "tour_destination"
    t.string   "tour_status"
    t.string   "tour_type"
    t.integer  "tour_nights"
    t.integer  "tour_balance_due_in_days"
    t.integer  "tour_booking_deposit"
    t.boolean  "tour_seat_numbers_on",           default: true
    t.boolean  "tour_mystery_tour",              default: false
    t.boolean  "tour_passport_required",         default: false
    t.boolean  "tour_self_drive_available",      default: true
    t.boolean  "tour_not_for_external_agents",   default: false
    t.boolean  "tour_tickets_included_in_fare",  default: true
    t.boolean  "tour_margin_scheme_vat_applies", default: false
    t.boolean  "tour_allow_agent_web_discounts", default: false
    t.boolean  "tour_requires_own_insurance",    default: false
    t.boolean  "tour_on_web_sale",               default: true
    t.boolean  "tour_web_desposits_allowed",     default: true
    t.boolean  "tour_pick_seats_online",         default: true
    t.boolean  "tour_insurance_available",       default: true
    t.boolean  "tour_insurance_inclusive",       default: false
    t.boolean  "tour_insurance_vat_applies",     default: true
  end

  create_table "vehical_bookings", force: :cascade do |t|
    t.integer  "vehical_id"
    t.date     "start_data"
    t.date     "end_date"
    t.integer  "occupied_seats"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["vehical_id"], name: "index_vehical_bookings_on_vehical_id"
  end

  create_table "vehicals", force: :cascade do |t|
    t.string   "name"
    t.string   "vehicle_type"
    t.integer  "seats"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
