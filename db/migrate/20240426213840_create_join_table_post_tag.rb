class CreateJoinTablePostTag < ActiveRecord::Migration[7.1]
  def change
    create_join_table :posts, :tags do |t|
      t.index :post_id
      t.index :tag_id
      t.foreign_key :posts
      t.foreign_key :tags
    end
  end
end
