class CreateAdress < ActiveRecord::Migration[5.1]
  def change
    create_table :adress do |t|
      t.string :NumeroCivique
      t.string :Rue
      t.string :CodePostal
      t.string :Ville
      t.string :Province
    end
  end
end
