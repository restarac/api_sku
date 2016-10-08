class CreateDisponibilidades < ActiveRecord::Migration[5.0]
  def change
    create_table :disponibilidades do |t|
      t.decimal :preco, precision: 10, scale: 2
      t.decimal :precoDe, precision: 10, scale: 2
      t.integer :disponivel
      t.references :skus, foreign_key: true, index: true

      t.timestamps
    end
  end
end
