# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Article.destroy_all
40.times do |index|
  Article.create!(title: Faker::Movies::Ghostbusters.character,
    body: Faker::Movies::BackToTheFuture.quote,
    status: "public",
    rating: 5,
    author: Faker::Movies::BackToTheFuture.character,
    # picture: Faker::Avatar.image,
  )
end

p "Created #{Article.count} articles"

# articles.each { |article| article.comments.create!(commenter: Faker::Movies::Ghostbusters.character,
#   body: Faker::Markdown.emphasis,
#   status: "public")}
# 10.times do |index|
#   Comment.create!(commenter: Faker::Movies::Ghostbusters.character,
#                 body: Faker::Markdown.emphasis,
#                 status: "public",
#               )
#             end
# p "Created #{Comment.count} comments"


# users.each do |@user|
#   content = Faker::Lorem.sentence(5)
#   projects.each { |project| project.comments.create!(body: content , user_id: @user.id) }
# end
