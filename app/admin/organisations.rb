ActiveAdmin.register Organisation do

  scope_to :current_admin_user

  permit_params :name, :default_start_time

  actions :all, except: [:new, :destroy]

  form do |f|
  	f.semantic_errors *f.object.errors.keys
  	f.inputs do
		f.input :name 
    f.input :default_start_time, as: :datetime_picker
  	end
  	f.actions
  end

  show do |o|

  	attributes_table do
  		row :name
  		row :default_start_time
  		row 'New event' do |o| link_to 'New event', new_admin_event_path(organisation_id: o.id) end
  		row 'New content block' do |o| link_to 'New content block', new_admin_content_block_path(organisation_id: o.id) end
  	end

  	panel 'Events' do
      table_for o.events do
        column :start_time do |e| e.start_time end
        column :title do |e| link_to(e.title, admin_event_path(e)) end
      end
    end

    panel 'Content Blocks' do
      table_for o.content_blocks do
        column :key do |b| b.key end
        column :title do |b| link_to(b.title, admin_content_block_path(b)) end
      end
    end

  end
  
end
