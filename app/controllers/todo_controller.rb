class TodoController < ApplicationController

  def new
    if !params[:text].blank?
      @text = params[:text]
      if !params[:categoryId].blank?
        @categoryId = params[:categoryId]
        if Category.exists?(@categoryId)
          begin
            Todo.create(
                text: @text,
                isCompleted: false,
                categoryId: @categoryId
              );
          rescue
            render json: {status: 500, msg: 'Server error!'}
          else
            render json: {status: 201, msg: 'The record has been created!'}
          end
        else
          render json: {status: 404, msg: 'There is no category with ID [' + @categoryId + ']!'}
        end
      else
        render json: {status: 406, msg: 'The category is not specified!'}
      end
    else
      render json: {status: 400, msg: 'Empty task field!'}
    end
  end

  def edit
    @todoId = params[:todoid]
    @projectId = params[:categoryid].to_i

    if Todo.exists?(@todoId)
      todo = Todo.find_by(id: @todoId)
      if todo.categoryId == @categoryId
        todo.update(isCompleted: !todo.isCompleted)
       render json: {status: 201, msg: 'The task has been updated!', data: todo}
      else 
        render json: {status: 404, msg: 'The record was not found!'}
      end
    else
      render json: {status: 0, msg: 'API not working!', data:}
    end
  end
end