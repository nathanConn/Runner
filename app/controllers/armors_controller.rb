class ArmorsController < ApplicationController
  # before_action :set_armor, only: [:show, :edit, :update, :destroy]

  # GET /armors
  # GET /armors.json
  def index
    @armors = Armor.all
  end

  # GET /armors/1
  # GET /armors/1.json
  def show
  end

  # GET /armors/new
  def new
    @armor = Armor.new
  end

  # GET /armors/1/edit
  def edit
  end

  # POST /armors
  # POST /armors.json
  def create
    @character = Character.find(params[:character_id])
    @armor     = @character.armors.create(armor_params)
    redirect_to character_path(@character)
  end

  # PATCH/PUT /armors/1
  # PATCH/PUT /armors/1.json
  # def update
  #   respond_to do |format|
  #     if @armor.update(armor_params)
  #       format.html { redirect_to @armor, notice: 'Armor was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @armor }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @armor.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /armors/1
  # DELETE /armors/1.json
  def destroy
    @character = Character.find(params[:character_id])
    @armor     = @character.armors.find(params[:id])
    @armor.destroy
    redirect_to character_path(@character)
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def armor_params
      params.require(:armor).permit(:name, :rating, :wireless, :misc, :character_id)
    end
end
