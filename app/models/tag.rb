class Tag < ApplicationRecord
    has_many :posts_tags
    has_many :posts, through: :posts_tags
    validates :name, presence: {message: "The tag must have a valid name"}, uniqueness: {message: "Tag already applied, try with a different one"}
end
