class ClientsHasEnfants < ActiveRecord::Migration[5.1]
  def change
    create_table :Clients_Has_Enfants do |t|
      t.references :Enfants_id, foreign_key: true
      t.references :Clients_id, foreign_key: true
      t.integer :Lien
    end
  end
end
