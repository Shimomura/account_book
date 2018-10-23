class OutlaysController < ApplicationController
  before_action :set_outlay, only: [:show, :edit, :update, :destroy]

  # GET /outlays
  # GET /outlays.json
  def index
    @outlays = Outlay.all
  end

  # GET /outlays/1
  # GET /outlays/1.json
  def show
  end

  # GET /outlays/new
  def new
    @outlay = Outlay.new
  end

  # GET /outlays/1/edit
  def edit
  end

  # POST /outlays
  # POST /outlays.json
  def create
    @outlay = Outlay.new(outlay_params)

    respond_to do |format|
      if @outlay.save
        format.html { redirect_to @outlay, notice: 'Outlay was successfully created.' }
        format.json { render :show, status: :created, location: @outlay }
      else
        format.html { render :new }
        format.json { render json: @outlay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outlays/1
  # PATCH/PUT /outlays/1.json
  def update
    respond_to do |format|
      if @outlay.update(outlay_params)
        format.html { redirect_to @outlay, notice: 'Outlay was successfully updated.' }
        format.json { render :show, status: :ok, location: @outlay }
      else
        format.html { render :edit }
        format.json { render json: @outlay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outlays/1
  # DELETE /outlays/1.json
  def destroy
    @outlay.destroy
    respond_to do |format|
      format.html { redirect_to outlays_url, notice: 'Outlay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outlay
      @outlay = Outlay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outlay_params
      params.require(:outlay).permit(:amount, :date, :category_id, :wallet_id, :memo)
    end
end
