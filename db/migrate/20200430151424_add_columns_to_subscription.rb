class AddColumnsToSubscription < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :sub_name, :string
    add_column :subscriptions, :course_description, :text
  end
end
