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

ActiveRecord::Schema.define(:version => 20130512232544) do

  create_table "attachments", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "file"
    t.datetime "publication_date"
    t.datetime "update_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "incidents", :force => true do |t|
    t.string   "incident_number"
    t.string   "incident_type"
    t.string   "level"
    t.string   "location"
    t.string   "location_details"
    t.text     "summary"
    t.datetime "occured_on"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "informed_by"
  end

  add_index "incidents", ["location", "occured_on", "incident_type"], :name => "index_incidents_on_location_and_occured_on_and_incident_type"

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "geoloc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subscriptions", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
