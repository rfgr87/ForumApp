class SubjectsController < ApplicationController

    def index
        @subjects = Subject.all      
        render json: @subjects.to_json
    end
   
    def create
        @user = Subject.create(comment_params)
        render json: @user.to_json
    end
   
    def delete
        @user = Subject.find_by(id: params[:id]).destroy
        render json: @user.to_json
    end

    private
    
    def subject_params
        params.require(:subject).permit(:theme)
    end
end
