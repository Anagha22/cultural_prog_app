class ArtsfestDetailsController < ApplicationController
  before_action :set_artsfest_detail, only: [:show, :edit, :update, :destroy]

  # GET /artsfest_details
  # GET /artsfest_details.json
  def index
    @artsfest_details = ArtsfestDetail.all
  end

  # GET /artsfest_details/1
  # GET /artsfest_details/1.json
  def show
  end

  # GET /artsfest_details/new
  def new
    @artsfest_detail = ArtsfestDetail.new
  end

  # GET /artsfest_details/1/edit
  def edit
  end

  # POST /artsfest_details
  # POST /artsfest_details.json
  def create
    @artsfest_detail = ArtsfestDetail.new(artsfest_detail_params)

    respond_to do |format|
      if @artsfest_detail.save
        format.html { redirect_to @artsfest_detail, notice: 'Artsfest detail was successfully created.' }
        format.json { render :show, status: :created, location: @artsfest_detail }
      else
        format.html { render :new }
        format.json { render json: @artsfest_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artsfest_details/1
  # PATCH/PUT /artsfest_details/1.json
  def update
    respond_to do |format|
      if @artsfest_detail.update(artsfest_detail_params)
        format.html { redirect_to @artsfest_detail, notice: 'Artsfest detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @artsfest_detail }
      else
        format.html { render :edit }
        format.json { render json: @artsfest_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artsfest_details/1
  # DELETE /artsfest_details/1.json
  def destroy
    @artsfest_detail.destroy
    respond_to do |format|
      format.html { redirect_to artsfest_details_url, notice: 'Artsfest detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artsfest_detail
      @artsfest_detail = ArtsfestDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artsfest_detail_params
      params.require(:artsfest_detail).permit(:name_, :house_, :roll_no_, :prize_)
    end
end
