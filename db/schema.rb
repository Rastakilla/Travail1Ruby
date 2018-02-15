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

ActiveRecord::Schema.define(version: 20180212224701) do

  create_table "adresses", force: :cascade do |t|
    t.string "NumeroCivique"
    t.string "Rue"
    t.string "CodePostal"
    t.string "Ville"
    t.string "Province"
  end

  create_table "clients", force: :cascade do |t|
    t.string "Prenom"
    t.string "Nom"
    t.datetime "DateNaissance"
    t.string "NAS"
    t.integer "Adresses_id"
    t.integer "NombreEnfants"
    t.integer "CompteTaxesProprietaire"
  end

  create_table "clients_etats_civils", force: :cascade do |t|
    t.integer "Clients_id_id"
    t.integer "EtatCivil_id_id"
    t.datetime "DateDebut"
    t.datetime "DateFin"
    t.index ["Clients_id_id"], name: "index_clients_etats_civils_on_Clients_id_id"
    t.index ["EtatCivil_id_id"], name: "index_clients_etats_civils_on_EtatCivil_id_id"
  end

  create_table "clients_has_conjoints", force: :cascade do |t|
    t.integer "Clients_id_id"
    t.integer "Clients_Conjoint_id_id"
    t.datetime "DateDebut"
    t.datetime "DateFin"
    t.index ["Clients_Conjoint_id_id"], name: "index_clients_has_conjoints_on_Clients_Conjoint_id_id"
    t.index ["Clients_id_id"], name: "index_clients_has_conjoints_on_Clients_id_id"
  end

  create_table "clients_has_employeurs", force: :cascade do |t|
    t.integer "Clients_id_id"
    t.integer "Employeurs_id_id"
    t.datetime "DateDebut"
    t.datetime "DateFin"
    t.index ["Clients_id_id"], name: "index_clients_has_employeurs_on_Clients_id_id"
    t.index ["Employeurs_id_id"], name: "index_clients_has_employeurs_on_Employeurs_id_id"
  end

  create_table "clients_has_enfants", force: :cascade do |t|
    t.integer "Enfants_id_id"
    t.integer "Clients_id_id"
    t.integer "Lien"
    t.index ["Clients_id_id"], name: "index_clients_has_enfants_on_Clients_id_id"
    t.index ["Enfants_id_id"], name: "index_clients_has_enfants_on_Enfants_id_id"
  end

  create_table "employeurs", force: :cascade do |t|
    t.string "Nom"
    t.integer "Adresses_id_id"
    t.index ["Adresses_id_id"], name: "index_employeurs_on_Adresses_id_id"
  end

  create_table "enfants", force: :cascade do |t|
    t.string "Nom"
    t.string "Prenom"
    t.datetime "Datenaissance"
  end

  create_table "etats_civils", force: :cascade do |t|
    t.string "type"
  end

  create_table "etudes", force: :cascade do |t|
    t.string "SecteurEtudes"
    t.string "Niveau"
    t.datetime "DateDebut"
    t.datetime "DateCompletion"
    t.integer "Clients_id_id"
    t.integer "Institutions_id_id"
    t.index ["Clients_id_id"], name: "index_etudes_on_Clients_id_id"
    t.index ["Institutions_id_id"], name: "index_etudes_on_Institutions_id_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "Nom"
    t.integer "Adresses_id_id"
    t.index ["Adresses_id_id"], name: "index_institutions_on_Adresses_id_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "role"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_people_on_project_id"
  end

  create_table "project_tags", force: :cascade do |t|
    t.integer "project_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_tags_on_project_id"
    t.index ["tag_id"], name: "index_project_tags_on_tag_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_projects_on_owner_id"
  end

  create_table "sub_tasks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "done"
    t.integer "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_sub_tasks_on_task_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "done"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
