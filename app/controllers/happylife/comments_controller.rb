require_dependency "happylife/application_controller"

module Happylife
  class CommentsController < ApplicationController
    def create
      @book = Book.find(params[:book_id])
      @comment = @book.comments.create(comment_params)
      flash[:notice] = "Comment has been created!"
      #redirect_to books_path
      redirect_to @book
    end

    private
    def comment_params
      params.require(:comment).permit(:text)
    end
  end
end
