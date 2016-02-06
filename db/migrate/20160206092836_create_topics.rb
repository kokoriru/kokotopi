class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :author
      t.text :content
      t.belongs_to :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
