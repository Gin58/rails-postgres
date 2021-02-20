module Api
  module V1
    class UsersController < BaseController
      def index
        users = User.all
        render json: users, each_serializer: UserSerializer
      end
    end
  end
end