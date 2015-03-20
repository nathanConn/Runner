class SkillsController < ApplicationController
	def create
		@character = Character.find(params[:character_id])
		@skill 	   = @character.skills.create(skill_params)
		redirect_to character_path(@character)
	end

	def destroy
		@character = Character.find(params[:character_id])
		@skill     = @character.skills.find(params[:id])
		@skill.destroy
		redirect_to character_path(@character)
	end

	def edit
		@skill     = Skill.find(params[:id])
	end

	private
    def skill_params
    	params.require(:skill).permit(:name, :value)
    end

end
