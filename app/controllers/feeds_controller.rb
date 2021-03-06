class FeedsController < ApplicationController
	before_filter :ensure_admin, only: [:new, :create, :edit, :update, :destroy]

	def index
		@feeds = Feed.all
	end

	def new
		@feed = Feed.new
	end

	def create
		@feed = Feed.new(params['feed'])
		if @feed.save
			redirect_to feeds_path
		else
			render :new
		end
	end

	def show
		@feed = Feed.find(params[:id])
	end

	def edit
		@feed = Feed.find(params[:if])
	end

	def update
		@feed = Feed.find(params[:id])
		if @feed.update_attributes(params['feed'])
			redirect_to feeds_path
		else
			render :new
		end
	end

	def destroy
		Feed.find(params[:id]).delete
		redirect_to feeds_path
	end
end