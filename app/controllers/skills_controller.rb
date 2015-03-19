class SkillsController < ApplicationController
	def create
		@character = Character.find(params[:character_id])
		@skill 	   = @character.skills.create(skill_params)
		redirect_to character_path(@character)
	end

end
