class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body

      t.timestamps # know when you created the blog
    end
  end
end
