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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160910214416) do

  create_table "children", force: :cascade do |t|
    t.string   "nameChild",      limit: 255
    t.date     "birthDateChild"
    t.integer  "mother_id",      limit: 4
    t.integer  "team_id",        limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "children", ["mother_id"], name: "index_children_on_mother_id", using: :btree
  add_index "children", ["team_id"], name: "index_children_on_team_id", using: :btree

  create_table "maternity_assistances", force: :cascade do |t|
    t.date     "startDate"
    t.date     "endDate"
    t.integer  "mother_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "maternity_assistances", ["mother_id"], name: "index_maternity_assistances_on_mother_id", using: :btree

  create_table "mothers", force: :cascade do |t|
    t.string   "nameMother",               limit: 255
    t.string   "occupationMother",         limit: 255
    t.boolean  "maternityLeaveMother"
    t.string   "addressMother",            limit: 255
    t.integer  "neighborhood_id",          limit: 4
    t.string   "telephoneMother",          limit: 255
    t.float    "salaryMother",             limit: 24
    t.float    "salaryFamilyMother",       limit: 24
    t.float    "familyPurseMother",        limit: 24
    t.integer  "amountPeopleFamilyMother", limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "mothers", ["neighborhood_id"], name: "index_mothers_on_neighborhood_id", using: :btree

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "nameNeighborhood", limit: 255
    t.integer  "sector_id",        limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "neighborhoods", ["sector_id"], name: "index_neighborhoods_on_sector_id", using: :btree

  create_table "registrations", force: :cascade do |t|
    t.date     "dateRegistration"
    t.string   "noteRegistration", limit: 255
    t.integer  "child_id",         limit: 4
    t.integer  "mother_id",        limit: 4
    t.integer  "team_id",          limit: 4
    t.integer  "school_id",        limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "registrations", ["child_id"], name: "index_registrations_on_child_id", using: :btree
  add_index "registrations", ["mother_id"], name: "index_registrations_on_mother_id", using: :btree
  add_index "registrations", ["school_id"], name: "index_registrations_on_school_id", using: :btree
  add_index "registrations", ["team_id"], name: "index_registrations_on_team_id", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string   "nameSchool",      limit: 255
    t.integer  "vacanciesSchool", limit: 4
    t.integer  "neighborhood_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "schools", ["neighborhood_id"], name: "index_schools_on_neighborhood_id", using: :btree

  create_table "sectors", force: :cascade do |t|
    t.string   "codeSector",        limit: 255
    t.string   "descriptionSector", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "descriptionTeam",   limit: 255
    t.integer  "limitChildrenTeam", limit: 4
    t.integer  "school_id",         limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "teams", ["school_id"], name: "index_teams_on_school_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "role",                   limit: 4
    t.string   "invitation_token",       limit: 255
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit",       limit: 4
    t.integer  "invited_by_id",          limit: 4
    t.string   "invited_by_type",        limit: 255
    t.integer  "invitations_count",      limit: 4,   default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "children", "mothers"
  add_foreign_key "children", "teams"
  add_foreign_key "maternity_assistances", "mothers"
  add_foreign_key "mothers", "neighborhoods"
  add_foreign_key "neighborhoods", "sectors"
  add_foreign_key "registrations", "children"
  add_foreign_key "registrations", "mothers"
  add_foreign_key "registrations", "schools"
  add_foreign_key "registrations", "teams"
  add_foreign_key "schools", "neighborhoods"
  add_foreign_key "teams", "schools"
end
