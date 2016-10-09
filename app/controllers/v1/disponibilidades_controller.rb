module V1
  class DisponibilidadesController < ActionController::API
    before_action :set_disponibilidade, only: [:show, :update, :destroy]

    # GET /disponibilidades
    def index
      @disponibilidades = Disponibilidade.all

      render json: @disponibilidades
    end

    # GET /disponibilidades/1
    def show
      render json: @disponibilidade
    end

    # POST /disponibilidades
    def create
      @disponibilidade = Disponibilidade.new(disponibilidade_params)

      if @disponibilidade.save
        render json: @disponibilidade, status: :created
      else
        render json: @disponibilidade.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /disponibilidades/1
    def update
      if @disponibilidade.update(disponibilidade_params)
        render json: @disponibilidade
      else
        render json: @disponibilidade.errors, status: :unprocessable_entity
      end
    end

    # DELETE /disponibilidades/1
    def destroy
      @disponibilidade.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_disponibilidade
        @disponibilidade = Disponibilidade.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def disponibilidade_params
        params.permit(:preco, :preco, :precoDe, :precoDe, :disponivel)
      end
  end
end