class AddLinksToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :facebook_link, :string
    add_column :events, :instagram_link, :string
    add_column :events, :website_link, :string
    add_column :events, :spotify_link, :string
  end
end
