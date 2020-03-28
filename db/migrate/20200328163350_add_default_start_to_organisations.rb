class AddDefaultStartToOrganisations < ActiveRecord::Migration[6.0]
  def change
    add_column :organisations, :default_start_time, :datetime
  end
end
