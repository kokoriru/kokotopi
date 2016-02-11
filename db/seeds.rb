# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comment.delete_all
Comment.connection.execute(%|SELECT setval ('comments_id_seq', 1, false)|)
Topic.delete_all
Topic.connection.execute(%|SELECT setval ('topics_id_seq', 1, false)|)
Category.delete_all
Category.connection.execute(%|SELECT setval ('categories_id_seq', 1, false)|)

1.upto(3) do |i|
  category = Category.create name: "category#{i}"

  1.upto(3) do |j|
    topic = Topic.create title: "title#{i}-#{j}", author: "author#{i}-#{j}", updater: "updater#{i}-#{j}", content: "content#{i}-#{j}", category: category

    1.upto(3) do |k|
      Comment.create author: "author#{i}-#{j}-#{k}", content: "content#{i}-#{j}-#{k}", topic: topic
    end
  end
end

