class AddNationalityToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :nationality, :string
  end
end
