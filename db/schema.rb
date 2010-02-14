# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100214030349) do

  create_table "contacts", :force => true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name",   :null => false
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "postal_code"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "phone3"
    t.string   "email"
    t.string   "spoken_lang"
    t.integer  "created_by"
    t.integer  "customer_id"
    t.integer  "supplier_id"
    t.string   "note"
    t.date     "date_birth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "company_name"
    t.string   "first_name"
    t.string   "last_name",    :null => false
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "postal_code"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "phone3"
    t.string   "email"
    t.string   "spoken_lang"
    t.integer  "created_by"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employe_attachments", :force => true do |t|
    t.integer  "employes_id"
    t.string   "filename"
    t.string   "description"
    t.integer  "filesize"
    t.string   "content_type"
    t.binary   "data"
    t.string   "added_user"
    t.date     "added_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employe_ccq_qualifications", :force => true do |t|
    t.string   "qualification_code"
    t.string   "qualification_name_fr"
    t.string   "qualification_name_en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employe_ccq_schedules", :force => true do |t|
    t.string   "schedule_code"
    t.string   "schedule_name_fr"
    t.string   "schedule_name_en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employe_ccq_sectors", :force => true do |t|
    t.string   "sector_code"
    t.string   "sector_name_fr"
    t.string   "sector_name_en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employe_ccq_trades", :force => true do |t|
    t.integer  "trade_id"
    t.integer  "apprentice_period"
    t.string   "trade_name_fr"
    t.string   "trade_name_en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employes", :force => true do |t|
    t.string   "first_name",    :null => false
    t.string   "last_name",     :null => false
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "postal_code"
    t.string   "ssn"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "phone3"
    t.string   "email"
    t.string   "spoken_lang"
    t.string   "civil_status"
    t.date     "date_birth"
    t.date     "date_hire"
    t.date     "date_startemp"
    t.date     "date_endemp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pay_codes", :force => true do |t|
    t.string   "paycode_name"
    t.string   "pay_code_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "project_name"
    t.string   "project_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "supplier_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "postal_code"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "phone3"
    t.string   "email"
    t.string   "web"
    t.string   "spoken_lang"
    t.integer  "created_by"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                             :null => false
    t.string   "email",                             :null => false
    t.string   "first_name",                        :null => false
    t.string   "last_name",                         :null => false
    t.string   "hashed_password",                   :null => false
    t.string   "salt",                              :null => false
    t.integer  "login_count",        :default => 0, :null => false
    t.integer  "failed_login_count", :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
