namespace :articles do
  desc "Seed comments"
  task seed_comments: :environment do
    Comment.create!([{
      commenter: "Action"
    },
    {
      body: "Sci-Fi"
    },
    ])

    p "Created #{Article.count} comments"
  end
end
