class EtatsCivils < ActiveRecord::Migration[5.1]
  def change
    create_table :EtatsCivils do |t|
      t.string :type
    end
  end
end
