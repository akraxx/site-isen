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

ActiveRecord::Schema.define(:version => 20100302121959) do

  create_table "augus", :force => true do |t|
    t.string   "lol"
    t.datetime "date"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bloublous", :force => true do |t|
    t.string   "login"
    t.string   "pwd"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultations", :force => true do |t|
    t.integer  "medecin_id"
    t.integer  "patient_id"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "glous", :force => true do |t|
    t.string   "login"
    t.string   "pwd"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lols", :force => true do |t|
    t.string   "test"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medecins", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "one_sheet_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "id_user"
    t.integer  "hidden",                      :default => 0
    t.string   "name",         :limit => 256
    t.string   "photo",        :limit => 30
    t.float    "base_prise"
    t.datetime "sale_endtime"
    t.datetime "creation",                                   :null => false
  end

  create_table "produits", :force => true do |t|
    t.string   "nom"
    t.text     "description"
    t.integer  "category"
    t.datetime "date"
  end

  create_table "tests", :force => true do |t|
    t.string   "lol"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",            :limit => 30
    t.string   "pwd",              :limit => 100
    t.string   "email",            :limit => 100
    t.datetime "account_creation"
  end

  create_table "utilisateurs", :force => true do |t|
    t.string   "login"
    t.string   "pwd"
    t.string   "email"
    t.datetime "account_creation"
  end

  create_table "utilisateurs_descs", :force => true do |t|
    t.string  "name"
    t.integer "utilisateur_id"
  end

end
