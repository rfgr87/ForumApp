    #require_relative 'pry'

class CommentsController < ApplicationController
    
    def index
        @comments = Comment.all      
        render json: @comments.to_json
    end
    
    def create
        @comment = Comment.create(comment_params)
        render json: @comment.to_json
    end
       
    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        render json: @comment.to_json
    end
    
    private
            
    def comment_params
        params.require(:comment).permit(:info, :subject_id)
    end
    
end
