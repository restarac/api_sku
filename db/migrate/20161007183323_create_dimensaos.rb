class CreateDimensaos < ActiveRecord::Migration[5.0]
  def change
    create_table :dimensaos do |t|
      t.integer :altura
      t.integer :largura
      t.integer :comprimento
      t.integer :peso
      t.references :skus, foreign_key: true, index: true

      t.timestamps
    end
  end
end
