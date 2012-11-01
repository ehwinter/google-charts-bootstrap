# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120920012309) do

  create_table "accesses", :force => true do |t|
    t.integer  "user_id"
    t.string   "code"
    t.string   "username"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "devices", :force => true do |t|
    t.integer  "user_id"
    t.integer  "device"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "faqs", :force => true do |t|
    t.string   "question"
    t.text     "answer"
    t.boolean  "display",    :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "load_otto_view_raw_trips", :id => false, :force => true do |t|
    t.integer "serial_number",                     :null => false
    t.integer "trip_number",                       :null => false
    t.string  "current_time",        :limit => 30
    t.float   "latitude"
    t.float   "longitude"
    t.float   "trip_distance"
    t.string  "trip_duration"
    t.float   "trip_fuel_usage"
    t.float   "fuel_price"
    t.float   "trip_fuel_cost"
    t.float   "trip_operating_cost"
    t.float   "average_economy"
    t.string  "survey_completed"
    t.integer "driver_number"
    t.integer "passengers8"
    t.integer "passengers15"
    t.integer "passengers24"
    t.integer "passengers64"
    t.integer "passengers74"
    t.integer "passengers75plus"
    t.string  "trip_destination"
    t.integer "imei"
    t.integer "imsi"
    t.string  "report_time",         :limit => 30
  end

  create_table "load_transport_canada_registrations", :primary_key => "accesscode", :force => true do |t|
    t.string "callresult",          :limit => 50
    t.string "loggertype",          :limit => 50
    t.string "batch",               :limit => 50
    t.string "province_1",          :limit => 50
    t.string "preflanguage",        :limit => 50
    t.string "start_date",          :limit => 50
    t.string "end_date",            :limit => 50
    t.string "firstname",           :limit => 50
    t.string "lastname",            :limit => 50
    t.string "phonenumber",         :limit => 50
    t.string "emailaddress",        :limit => 50
    t.string "number",              :limit => 50
    t.string "street",              :limit => 50
    t.string "city",                :limit => 50
    t.string "postalcode",          :limit => 50
    t.string "vehicle",             :limit => 50
    t.string "vin",                 :limit => 50
    t.string "province_2",          :limit => 50
    t.string "havevehicle",         :limit => 50
    t.string "whynot",              :limit => 50
    t.string "since_day",           :limit => 50
    t.string "since_month",         :limit => 50
    t.string "since_year",          :limit => 50
    t.string "name_2",              :limit => 50
    t.string "gender_2",            :limit => 50
    t.string "yob_2",               :limit => 50
    t.string "name_3",              :limit => 50
    t.string "gender_3",            :limit => 50
    t.string "yob_3",               :limit => 50
    t.string "name_4",              :limit => 50
    t.string "gender_4",            :limit => 50
    t.string "yob_4",               :limit => 50
    t.string "name_5",              :limit => 50
    t.string "gender_5",            :limit => 50
    t.string "yob_5",               :limit => 50
    t.string "name_6",              :limit => 50
    t.string "gender_6",            :limit => 50
    t.string "yob_6",               :limit => 50
    t.string "age_range_2",         :limit => 50
    t.string "age_range_3",         :limit => 50
    t.string "age_range_4",         :limit => 50
    t.string "age_range_5",         :limit => 50
    t.string "age_range_6",         :limit => 50
    t.string "yearofbirthanswered", :limit => 50
    t.string "age",                 :limit => 50
    t.string "agerange",            :limit => 50
    t.string "gender",              :limit => 50
    t.string "typeoffuel",          :limit => 50
    t.string "transmission",        :limit => 50
    t.string "completedonline",     :limit => 50
    t.string "finalstatus",         :limit => 50
    t.string "logger_id",           :limit => 50
    t.string "assigndate",          :limit => 50
    t.string "returndate",          :limit => 50
  end

  create_table "otto_view_raw_trips", :force => true do |t|
    t.integer  "serial_number"
    t.integer  "trip_number"
    t.datetime "current_time"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "trip_distance"
    t.string   "trip_duration"
    t.float    "trip_fuel_usage"
    t.float    "fuel_price"
    t.float    "trip_fuel_cost"
    t.float    "trip_operating_cost"
    t.float    "average_economy"
    t.string   "survey_completed"
    t.integer  "driver_number"
    t.integer  "passengers8"
    t.integer  "passengers15"
    t.integer  "passengers24"
    t.integer  "passengers64"
    t.integer  "passengers74"
    t.integer  "passengers75plus"
    t.string   "trip_destination"
    t.integer  "imei"
    t.integer  "imsi"
    t.datetime "report_time"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "otto_view_raw_trips", ["current_time"], :name => "index_otto_view_raw_trips_on_current_time"
  add_index "otto_view_raw_trips", ["serial_number"], :name => "index_otto_view_raw_trips_on_serial_number"
  add_index "otto_view_raw_trips", ["trip_number"], :name => "index_otto_view_raw_trips_on_trip_number"

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "snippets", :force => true do |t|
    t.string   "name"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "transport_canada_registrations", :force => true do |t|
    t.string   "accesscode"
    t.string   "logger_partvin"
    t.string   "callresult"
    t.string   "l_type"
    t.string   "batch"
    t.string   "province"
    t.string   "preflanguage"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "phonenumber"
    t.string   "e_mailaddress",       :null => false
    t.string   "number"
    t.string   "street"
    t.string   "city"
    t.string   "postalcode"
    t.string   "vehicle"
    t.string   "vin"
    t.string   "havevehicle"
    t.string   "whynot"
    t.string   "since_day"
    t.string   "since_month"
    t.string   "since_year"
    t.string   "name_2"
    t.string   "gender_2"
    t.string   "yob_2"
    t.string   "name_3"
    t.string   "gender_3"
    t.string   "yob_3"
    t.string   "name_4"
    t.string   "gender_4"
    t.string   "yob_4"
    t.string   "name_5"
    t.string   "gender_5"
    t.string   "yob_5"
    t.string   "name_6"
    t.string   "gender_6"
    t.string   "yob_6"
    t.string   "age_range_2"
    t.string   "age_range_3"
    t.string   "age_range_4"
    t.string   "age_range_5"
    t.string   "age_range_6"
    t.string   "yearofbirthanswered"
    t.string   "age"
    t.string   "agerange"
    t.string   "gender"
    t.string   "typeoffuel"
    t.string   "transmission"
    t.string   "completedonline"
    t.string   "finalstatus"
    t.integer  "logger_id"
    t.datetime "assigndate"
    t.datetime "returndate"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "transport_canada_registrations", ["e_mailaddress"], :name => "index_transport_canada_registrations_on_e_mailaddress", :unique => true

  create_table "trips", :force => true do |t|
    t.integer  "user_id"
    t.integer  "device_id"
    t.integer  "serial_number"
    t.integer  "number"
    t.datetime "end_date"
    t.float    "distance"
    t.string   "duration"
    t.float    "fuel_usage"
    t.float    "dollars"
    t.float    "economy"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "trips", ["serial_number", "number"], :name => "index_trips_on_serial_number_and_number", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
