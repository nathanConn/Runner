class BiowaresController < ApplicationController
  # before_action :set_bioware, only: [:show, :edit, :update, :destroy]

  # GET /biowares
  # GET /biowares.json
  def index
    @biowares = Bioware.all
  end

  # GET /biowares/1
  # GET /biowares/1.json
  def show
  end

  # GET /biowares/new
  def new
    @bioware = Bioware.new
  end

  # GET /biowares/1/edit
  def edit
  end

  # POST /biowares
  # POST /biowares.json
  def create
    @character = Character.find(params[:character_id])
    @bioware     = @character.biowares.create(bioware_params)
    redirect_to character_path(@character)
  end

  # PATCH/PUT /biowares/1
  # PATCH/PUT /biowares/1.json
  # def update
  #   respond_to do |format|
  #     if @bioware.update(bioware_params)
  #       format.html { redirect_to @bioware, notice: 'Bioware was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @bioware }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @bioware.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /biowares/1
  # DELETE /biowares/1.json
  def destroy
    @character = Character.find(params[:character_id])
    @bioware     = @character.biowares.find(params[:id])
    @bioware.destroy
    redirect_to character_path(@character)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_bioware
    #   @bioware = Bioware.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bioware_params
      params.require(:bioware).permit(:name, :rating, :notes, :wireless, :essence, :character_id)
    end
end
