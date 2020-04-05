class CreateContentBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :content_blocks do |t|
      t.string :key
      t.string :title
      t.text :content
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
