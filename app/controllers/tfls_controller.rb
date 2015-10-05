class TflsController < ApplicationController
  before_filter :authorize_company
  before_action :set_tfl, only: [:show, :edit, :update, :destroy]

  # GET /tfls
  # GET /tfls.json
  def index
    @tfls = current_company.tfls
  end

  # GET /tfls/1
  # GET /tfls/1.json
  def show
  end

  # GET /tfls/new
  def new
    @tfl = current_company.tfls.build
  end

  # GET /tfls/1/edit
  def edit
  end

  # POST /tfls
  # POST /tfls.json
   def create
    @tfl = current_company.tfls.build(tfl_params)

    respond_to do |format|
      if @tfl.save
        format.html { redirect_to @tfl, notice: 'Tfl was successfully created.' }
        format.json { render :show, status: :created, location: @tfl }
      else
        format.html { render :new }
        format.json { render json: @tfl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tfls/1
  # PATCH/PUT /tfls/1.json
  def update
    @tfls = current_company.tfls.find(params[:id])
    respond_to do |format|
      if @tfl.update(tfl_params)
        format.html { redirect_to @tfl, notice: 'Tfl was successfully updated.' }
        format.json { render :show, status: :ok, location: @tfl }
      else
        format.html { render :edit }
        format.json { render json: @tfl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tfls/1
  # DELETE /tfls/1.json
  def destroy
    @tfls = current_company.tfls.find(params[:id])
    @tfl.destroy
    respond_to do |format|
      format.html { redirect_to tfls_url, notice: 'Tfl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tfl
      @tfl = Tfl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tfl_params
      params.require(:tfl).permit(:name, :employee_id)
    end
end
