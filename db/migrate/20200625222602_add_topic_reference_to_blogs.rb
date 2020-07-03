class AddTopicReferenceToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_reference :blogs, :topic, foreign_key: true # null: false
  end
end
