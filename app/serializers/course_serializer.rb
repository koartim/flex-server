class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty, :img_url, :description
end
