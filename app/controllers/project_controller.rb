class ProjectController < ApplicationController
  def index
    @Categories = Category.all
    @Todos = Todo.all

    response = []
    for category in @Categories
      category_todos = []
      for todo in @Todos.select {|todo| todo.categoryId == category.id}
        category_todos.push({
          id: todo.id,
          text: todo.text,
          isCompleted: todo.isCompleted
        })
      end
      response.push({
        id: category.id,
        title: category.title,
        todos: category_todos
      })
    end
    render json: response
  end

  def new     
    if !params[:title].blank?
      @title=params[:title]
      if !Category.exists?(@title)
        begin
          Category.create(title: @title)
        rescue 
          render json: {status: 500, msg: 'Server error!'}
        else
          render json: {status: 201, msg: 'Success!'}
        end
      end
    end
  end
end
