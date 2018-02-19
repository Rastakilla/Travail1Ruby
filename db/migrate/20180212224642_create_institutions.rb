class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.string :Nom
      t.references :etude, foreign_key: true
      t.references :adress, foreign_key: true
    end
  end
end
