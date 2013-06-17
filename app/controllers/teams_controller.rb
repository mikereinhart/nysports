class TeamsController <ApplicationController
	before_filter :ensure_admin, only: [:new, :create, :edit, :update, :destroy]
	
	def index
		@teams = Team.all
	end

	def create
		@team = Team.new(params['team'])
		if @team.save
			redirect_to teams_path
		else
			render :new
		end
	end

	def new
		@team = Team.new
		@sites = Site.all
	end

	def edit
		@team = Team.find(params[:id])
		@sites = Site.all
	end

	def show
		@team = Team.find(params[:id])
		@sites = Site.all
	end

	def update
		@team = Team.find(params[:id])
		if @team.update_attributes(params['team'])
			redirect_to teams_path
		else
			render :new
		end
	end

	def destroy
		Team.find(params[:id]).delete
		redirect_to teams_path
	end
end