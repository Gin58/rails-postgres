class UserSerializer < ActiveModel::Serializer
  attributes :id
  attributes :email

  def id
    object.id
  end

  def email
    object.email
  end
end
