class TeamController < ApplicationController
	def index 
	end

	def chal
	end

	def list
		_teams = Team.select('id,name,logo,manifesto,success,failure,score,captain').offset((params[:page].to_i-1)*4).limit(4).find(:all,:include=>[:mems]).each do |t|
			t[:mem_count] = t.mems.count
    end
		render json:_teams
	end
end
