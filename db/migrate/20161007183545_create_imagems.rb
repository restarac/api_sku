class CreateImagems < ActiveRecord::Migration[5.0]
  def change
    create_table :imagems do |t|
      t.string :menor, limit: 300
      t.string :maior, limit: 300
      t.string :zoom, limit: 300
      t.references :skus, foreign_key: true, index: true

      t.timestamps
    end
  end
end
