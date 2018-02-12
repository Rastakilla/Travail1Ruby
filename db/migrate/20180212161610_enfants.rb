class Enfants < ActiveRecord::Migration[5.1]
  def change
    create_table :Enfants do |t|
      t.string :Nom
      t.string :Prenom
      t.datetime :Datenaissance
    end
  end
end
