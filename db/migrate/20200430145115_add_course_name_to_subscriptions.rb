class AddCourseNameToSubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :course_name, :string
  end
end
