class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :difficulty
      t.string :img_url
      t.text :description
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
