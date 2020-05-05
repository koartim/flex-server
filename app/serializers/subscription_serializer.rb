class SubscriptionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :course_id, :sub_name, :course_description, :sub_img
end
