class Etudes < ActiveRecord::Migration[5.1]
  def change
    create_table :Etudes do |t|
      t.string :SecteurEtudes
      t.string :Niveau
      t.datetime :DateDebut
      t.datetime :DateCompletion
      t.references :Clients_id, foreign_key: true
      t.references :Institutions_id, foreign_key: true
    end
  end
end
