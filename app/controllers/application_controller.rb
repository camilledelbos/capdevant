class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
http_basic_authenticate_with name: "leon", password: "mathilda"

  protect_from_forgery with: :exception
  before_filter :set_menus

  def set_menus
	@main_menu_items = ItemMenu.where(:zone => :main)
	@sidebar_menu_items = ItemMenu.where(:zone => :sidebar)
	@footer_menu_items = ItemMenu.where(:zone => :footer)
  end
end
