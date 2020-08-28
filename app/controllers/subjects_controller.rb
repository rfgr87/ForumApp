class SubjectsController < ApplicationController

    def create
        @user = User.create(comment_params)
        render json: @user.to_json
    end
   
    def delete
        @user = User.find_by(id: params[:id]).delete
        render json: @user.to_json
    end

  private

        
    def subject_params
        params.require(:subject).permit(:info)
    end
end
