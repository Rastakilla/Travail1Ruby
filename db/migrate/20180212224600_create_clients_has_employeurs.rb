class CreateClientsHasEmployeurs < ActiveRecord::Migration[5.1]
  def change
    create_table :clients_has_employeurs do |t|
      t.references :Clients_id, foreign_key: true
      t.references :Employeurs_id, foreign_key: true
      t.datetime :DateDebut
      t.datetime :DateFin
    end
  end
end
