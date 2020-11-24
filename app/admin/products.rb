ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :category_id, :name, :count, :small_desc, :description, :price, :available, :image
  #
  # or
  #

  form do |f|
    f.inputs "Product" do
      f.input :category_id, :as => :select, :collection => Category.all.collect {|cat| [cat.name, cat.id] }
      f.input :name
      f.input :count
      f.input :small_desc
      f.input :description
      f.input :price
      f.input :image
      f.input :available, :as => :radio
    end



    f.actions
  end
  permit_params :category_id, :name, :count, :small_desc, :description, :price, :available, :image
  # permit_params do
  #   permitted = [:category_id, :name, :count, :small_desc, :description, :price,  :available, :image ]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end