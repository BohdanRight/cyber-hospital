class ReceivingsController < ApplicationController
  before_action :set_receiving, only: [:show, :edit, :update, :destroy]

  # GET /receivings
  # GET /receivings.json
  def index
    @receivings = Receiving.all
  end

  # GET /receivings/1
  # GET /receivings/1.json
  def show
  end

  # GET /receivings/new
  def new
    @receiving = Receiving.new
  end

  # GET /receivings/1/edit
  def edit
  end

  # POST /receivings
  # POST /receivings.json
  def create
    @receiving = Receiving.new(receiving_params)

    respond_to do |format|
      if @receiving.save
        format.html { redirect_to @receiving, notice: 'Receiving was successfully created.' }
        format.json { render :show, status: :created, location: @receiving }
      else
        format.html { render :new }
        format.json { render json: @receiving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receivings/1
  # PATCH/PUT /receivings/1.json
  def update
    respond_to do |format|
      if @receiving.update(receiving_params)
        format.html { redirect_to @receiving, notice: 'Receiving was successfully updated.' }
        format.json { render :show, status: :ok, location: @receiving }
      else
        format.html { render :edit }
        format.json { render json: @receiving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receivings/1
  # DELETE /receivings/1.json
  def destroy
    @receiving.destroy
    respond_to do |format|
      format.html { redirect_to receivings_url, notice: 'Receiving was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receiving
      @receiving = Receiving.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receiving_params
      params.fetch(:receiving, {})
    end
end
