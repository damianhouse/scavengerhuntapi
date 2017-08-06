module Api::V1
  class UsersController < ApiController
    before_action :authenticate_user!, except: :create
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    # GET /v1/users
    def index
      render json: User.all
    end

    # GET /v1/users/{id}
    def show
      render json: @user
    end

    def edit
    end

    def create
      @user = User.create!(user_params)
      if @user
        render :show, status: :created, location: v1_user_url(@user)
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /users/1
    # PATCH/PUT /users/1.json
    def update
      if @user.update(user_params)
          render :show, status: :ok, location: v1_user_url(@user)
      else
          render json: @user.errors, status: :unprocessable_entity
      end
    end

    # DELETE /users/1
    # DELETE /users/1.json
    def destroy
      @user.destroy
      head 204
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def user_params
        params.permit(:name, :email, :password)
      end
  end
end