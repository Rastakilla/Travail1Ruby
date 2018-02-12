class Employeurs < ActiveRecord::Migration[5.1]
  def change
    create_table :Employeurs do |t|
      t.string :Nom
      t.references :Adresses_id, foreign_key: true
    end
  end
end
