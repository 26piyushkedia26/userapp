class StstusController < ApplicationController
  before_action :set_ststu, only: [:show, :edit, :update, :destroy]

  # GET /ststus
  # GET /ststus.json
  def index
    @ststus = Ststu.all
  end

  # GET /ststus/1
  # GET /ststus/1.json
  def show
  end

  # GET /ststus/new
  def new
    @ststu = Ststu.new
  end

  # GET /ststus/1/edit
  def edit
  end

  # POST /ststus
  # POST /ststus.json
  def create
    @ststu = Ststu.new(ststu_params)

    respond_to do |format|
      if @ststu.save
        format.html { redirect_to @ststu, notice: 'Ststu was successfully created.' }
        format.json { render :show, status: :created, location: @ststu }
      else
        format.html { render :new }
        format.json { render json: @ststu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ststus/1
  # PATCH/PUT /ststus/1.json
  def update
    respond_to do |format|
      if @ststu.update(ststu_params)
        format.html { redirect_to @ststu, notice: 'Ststu was successfully updated.' }
        format.json { render :show, status: :ok, location: @ststu }
      else
        format.html { render :edit }
        format.json { render json: @ststu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ststus/1
  # DELETE /ststus/1.json
  def destroy
    @ststu.destroy
    respond_to do |format|
      format.html { redirect_to ststus_url, notice: 'Ststu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ststu
      @ststu = Ststu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ststu_params
      params.require(:ststu).permit(:name, :content)
    end
end
