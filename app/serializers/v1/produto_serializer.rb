module V1
    class ProdutoSerializer < ActiveModel::Serializer
      attributes :id, :nome, :nomeReduzido, :especificacoesTecnicas, :palavrasChave
    end
end