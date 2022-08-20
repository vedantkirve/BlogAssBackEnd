class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      # t.belongs_to :author, foreign_key: true
      t.integer :userId
      t.string :title
      t.string :description
      t.string :authorName
      t.string :imageUrl
      t.string :dateTime
      t.string :tags
      t.timestamps
    end
  end
end
