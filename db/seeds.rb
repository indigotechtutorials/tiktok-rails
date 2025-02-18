# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.find_by(username: "indigotest123", email: "indigotest123@gmail.com")

if !user
  user = User.create(username: "indigotest123", email: "indigotest123@gmail.com", password: "123456")
end

test_file_path = Rails.root.join("test/videos/dogshort.mov")

100.times do |n|
  post = user.posts.create(caption: "Test tiktok post #{n}", description: "Seeded tiktok data")
  post.video.attach(io: File.open(test_file_path), filename: "video.mp4")
end
