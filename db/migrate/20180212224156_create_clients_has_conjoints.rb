class CreateClientsHasConjoints < ActiveRecord::Migration[5.1]
  def change
    create_table :clients_has_conjoints do |t|
      t.references :clients_id, foreign_key: true
      t.references :clients_Conjoint_id, foreign_key: true
      t.datetime :DateDebut
      t.datetime :DateFin
    end
  end
end
