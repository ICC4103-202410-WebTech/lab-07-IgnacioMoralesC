class Post < ApplicationRecord
    belongs_to :user
    has_many :posts_tags
    has_many :tags, through: :posts_tags
    belongs_to :related_post, class_name: "Post", optional: true
    has_many :related_posts, class_name: "Post", foreign_key: "related_post_id"

    validates :title, presence: {message: "Your post must have a title for others to know"}
    validates :content, presence: {message: "We need your post to have content, take your time thinking something great"}
    validates :user_id, presence: {message: "We couldnt find your id in your post"}
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "Couldn't count answers, how can you be so popular?"}
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message:"likes account not valid" }
end