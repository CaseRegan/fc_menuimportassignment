class MenuItemController < ApplicationController
	def list
		@menu_items = MenuItem.all
	end
end
