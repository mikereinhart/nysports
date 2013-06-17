class SitesController < ApplicationController
	before_filter :ensure_admin, only: [:new, :create, :edit, :update, :destroy]

	def index
		@sites = Site.all
	end

	def new
		@site = Site.new
	end

	def create
		@site = Site.new(params['site'])
		if @site.save
			redirect_to sites_path
		else
			render :new
		end
	end

	def show
		@site = Site.find(params[:id])
	end

	def edit 
		@site = Site.find(params[:id])
	end

	def update
		@site = Site.find(params[:id])
		if @site.update_attributes(params['site'])
			redirect_to sites_path
		else
			render :new
		end
	end

	def destroy
		Site.find(params[:id]).delete
		redirect_to sites_path
	end
end