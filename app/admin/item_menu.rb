ActiveAdmin.register ItemMenu do
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name, :zone
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  form do |f|
    f.inputs "ItemMenu" do     
        f.input :name
        f.input :zone, :label => "Pour quel menu?", :as => :select, :collection => [:main, :sidebar, :footer]
      end
      f.actions
    end
  
end
