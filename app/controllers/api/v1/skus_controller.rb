class SkusController < ActionController::API
  before_action :set_sku, only: [:show, :update, :destroy]

  # GET /skus
  def index
    @skus = Sku.all

    render json: @skus
  end

  # GET /skus/1
  def show
    render json: @sku
  end

  # POST /skus
  def create
    @sku = Sku.new(sku_params)

    if @sku.save
      render json: @sku, status: :created, location: @sku
    else
      render json: @sku.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skus/1
  def update
    if @sku.update(sku_params)
      render json: @sku
    else
      render json: @sku.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skus/1
  def destroy
    @sku.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sku
      @sku = Sku.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sku_params
      params.require(:sku).permit(:nome, :nomeReduzido, :dimensao, :imagems_id, :produto, :foraDeLinha, :url, :modelo)
    end
end
