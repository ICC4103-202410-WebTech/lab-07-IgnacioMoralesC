class User < ApplicationRecord
    has_many :posts, dependent: :destroy

    validates :name, presence: {message: "Please let us now your name"}
    validates :email, presence: {message: "We really need a way to contact you (email)"}, uniqueness: {message: "Email already taken, please check your spam folder"}, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Mail format not valid" }
    validates :password, presence: {message: "Please write a valid password, we promise this will be kept as our secret"}, length: { minimum: 6, message: "Try making your password longer please" }
    
end