class AddYoutubeLinkToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :youtube_link, :string
  end
end
