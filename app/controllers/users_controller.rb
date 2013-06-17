class UsersController <ApplicationController

	def index
		@users = User.all
	end

	def create
		@teams = Team.all
		@user = User.new(params['user'])
		if @user.save
			redirect_to root_path
		else
			render :new
		end
	end

	def new
		@user = User.new
		@teams = Team.all
	end

	def edit
		@user = User.find(params[:id])
		@teams = Team.all
	end

	def show
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params['user'])
			redirect_to user_path(current_user)
		else
			render :new
		end
	end

	def destroy
		User.find(params[:id]).delete
		redirect_to users_path
	end

end