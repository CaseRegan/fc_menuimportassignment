class MenuItemController < ApplicationController
	def list
		@menu_items = MenuItem.all
	end

	def new
		@list_id = params[:lid]
		@menu_items = MenuItem.all
	end

	def create
		@list_item = ListItem.new
		@list_item.mid = params[:mid]
		@list_item.lid = params[:lid]

		if @list_item.save
			redirect_to :controller => 'list', :action => 'show', :id => @list_item.lid
		else
			render :action => 'new'
		end
	end
end
