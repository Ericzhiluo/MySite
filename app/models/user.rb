class User < ActiveRecord::Base
	has_many :todolists, dependent: :destroy

	# people you follow
	has_many :followeerelationships, dependent: :destroy 
	has_many :followees, through: :followeerelationships

	# People who follow you
	has_many :followerrelationships, dependent: :destroy 
	has_many :followers, through: :followerrelationships

	has_secure_password
end
