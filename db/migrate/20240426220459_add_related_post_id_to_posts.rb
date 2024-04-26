class AddRelatedPostIdToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :related_post_id, :bigint
    add_index :posts, :related_post_id
    add_foreign_key :posts, :posts, column: :related_post_id, optional: true
  end
end
