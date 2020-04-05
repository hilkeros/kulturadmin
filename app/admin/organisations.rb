ActiveAdmin.register Organisation do

  scope_to :current_admin_user

  permit_params :name, :default_start_time

  form do |f|
  	f.semantic_errors *f.object.errors.keys
  	f.inputs do
		f.input :name 
    f.input :default_start_time, as: :datetime_picker
  	end
  	f.actions
  end
  
end
