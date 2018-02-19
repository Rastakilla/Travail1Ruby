class CreateEtudes < ActiveRecord::Migration[5.1]
  def change
    create_table :etudes do |t|
      t.string :SecteurEtudes
      t.string :Niveau
      t.datetime :DateDebut
      t.datetime :DateCompletion
      t.references :clients_id, foreign_key: true
      t.references :client_id, foreign_key: true
      t.references :Institutions_id, foreign_key: true
    end
  end
end
