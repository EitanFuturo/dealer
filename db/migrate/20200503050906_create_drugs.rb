class CreateDrugs < ActiveRecord::Migration[6.0]
  def change
    create_table :drugs do |t|
      t.string :name
      t.integer :frecuency

      t.timestamps
    end
  end
end
