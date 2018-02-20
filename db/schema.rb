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
    t.integer "NombreEnfants"
    t.integer "CompteTaxesProprietaire"
    t.integer "adress_id"
    t.index ["adress_id"], name: "index_clients_on_adress_id"
  end

  create_table "clients_etats_civils", force: :cascade do |t|
    t.integer "Clients_id"
    t.integer "etats_civils_id"
    t.datetime "DateDebut"
    t.datetime "DateFin"
    t.index ["Clients_id"], name: "index_clients_etats_civils_on_Clients_id"
    t.index ["etats_civils_id"], name: "index_clients_etats_civils_on_etats_civils_id"
  end

  create_table "clients_has_conjoints", force: :cascade do |t|
    t.integer "clients_id"
    t.datetime "DateDebut"
    t.datetime "DateFin"
    t.index ["clients_id"], name: "index_clients_has_conjoints_on_clients_id"
  end

  create_table "clients_has_employeurs", force: :cascade do |t|
    t.integer "Clients_id"
    t.integer "Employeurs_id"
    t.datetime "DateDebut"
    t.datetime "DateFin"
    t.index ["Clients_id"], name: "index_clients_has_employeurs_on_Clients_id"
    t.index ["Employeurs_id"], name: "index_clients_has_employeurs_on_Employeurs_id"
  end

  create_table "clients_has_enfants", force: :cascade do |t|
    t.integer "enfants_id"
    t.integer "clients_id"
    t.integer "Lien"
    t.index ["clients_id"], name: "index_clients_has_enfants_on_clients_id"
    t.index ["enfants_id"], name: "index_clients_has_enfants_on_enfants_id"
  end

  create_table "employeurs", force: :cascade do |t|
    t.string "Nom"
    t.integer "adress_id"
    t.index ["adress_id"], name: "index_employeurs_on_adress_id"
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
    t.integer "client_id"
    t.integer "Institutions_id"
    t.index ["Institutions_id"], name: "index_etudes_on_Institutions_id"
    t.index ["client_id"], name: "index_etudes_on_client_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "Nom"
    t.integer "etude_id"
    t.integer "adress_id"
    t.index ["adress_id"], name: "index_institutions_on_adress_id"
    t.index ["etude_id"], name: "index_institutions_on_etude_id"
  end

end
