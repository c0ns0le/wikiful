# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Create 8 seed categories
categories = Category.create([
		{ id: 1, name: 'History'}, { id: 2, name: 'Biology'}, { id: 3, name: 'Literature'},
		{ id: 4, name: 'Mathematics'}, { id: 5, name: 'Music Theory'}, { id: 6, name: 'Computer Science'},
		{ id: 7, name: 'Sociology'}, { id: 8, name: 'Chemistry'}
	])

# create 50 articles, with random titles, 250 words of content, and
# randomly assign one of the categories above to each article
for i in 0..49
	title = Faker::Lorem.sentence(rand(2..10)).chomp('.')
	content = Faker::Lorem.paragraph(word_count=250)

	# Randomly assign one of the categories we just created.
    # The 'sample' method selects a random item from a collection.
	category = Category.all.sample
	a = Article.create(id: i+1, title: title, content: content, categories: [category,])
end
