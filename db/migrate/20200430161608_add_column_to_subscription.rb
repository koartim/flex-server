class AddColumnToSubscription < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :sub_img, :string
  end
end
