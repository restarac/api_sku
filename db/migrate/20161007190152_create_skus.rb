class CreateSkus < ActiveRecord::Migration[5.0]
  def change
    create_table :skus do |t|
      t.string :nome, limit: 200
      t.string :nomeReduzido, limit: 50
      t.references :produtos, foreign_key: true, index: true
      t.boolean :foraDeLinha
      t.string :url, limit: 300
      t.string :modelo, limit: 100

      t.timestamps
    end
  end
end
