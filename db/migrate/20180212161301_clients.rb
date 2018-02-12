class Clients < ActiveRecord::Migration[5.1]
  def change
		create_table :Clients do |t|
      t.string :Prenom
			t.string :Nom
      t.datetime :DateNaissance
      t.string :NAS
      t.integer :Adresses_id
      t.integer :NombreEnfants
      t.integer :CompteTaxesProprietaire
    end
  end
end
