class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.string :NumeroCivique
      t.string :Rue
      t.string :CodePostal
      t.string :Ville
      t.string :Province
    end
  end
end
