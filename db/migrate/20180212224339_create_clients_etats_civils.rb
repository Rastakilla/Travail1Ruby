class CreateClientsEtatsCivils < ActiveRecord::Migration[5.1]
  def change
    create_table :clients_etats_civils do |t|
      t.references :Clients, foreign_key: true
      t.references :etats_civils, foreign_key: true
      t.datetime :DateDebut
      t.datetime :DateFin
    end
  end
end
