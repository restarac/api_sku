class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.string :nome, limit: 200
      t.string :nomeReduzido, limit: 50
      t.string :palavrasChave, limit: 300
      t.text :especificacoesTecnicas

      t.timestamps
    end
  end
end
