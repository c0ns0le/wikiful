class Category < ActiveRecord::Base
	has_many :articles, through: :article_categories
	has_many :article_categories #needed to be declared on it's own line
	validates :name, presence: true
end
