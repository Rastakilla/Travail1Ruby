class ClientsEtatsCivils < ActiveRecord::Migration[5.1]
  def change
    create_table :Clients_EtatsCivils do |t|
      t.references :Clients_id, foreign_key: true
      t.references :EtatCivil_id, foreign_key: true
      t.datetime :DateDebut
      t.datetime :DateFin
    end
  end
end
