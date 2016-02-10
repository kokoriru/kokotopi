class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :author  # 作成者
      t.string :updater # 更新者
      t.text :content
      t.belongs_to :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
