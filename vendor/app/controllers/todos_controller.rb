class TodosController < ApplicationController
    before_action :session_expired?
    

    def create
        todo = user.todos.create(todo_params)
        if todo.valid?
            app_response(status: :created, data: todo)
        else
            app_response(status: :unprocessable_entity, data: todo.errors, message: "Failed")
        end
    end

    def update
        todo = user.todos.find(params[:id]).update(todo_params)
        if todo
            app_response(data: { info: "updated todo successfully"})
        else
            app_response(message: 'Failed', data: { info: "Something went wrong" }, status: :unprocessable_entity)
        end
    end

    def destroy
        user.todos.find(params[:id]).destroy
        app_response(message: 'success', data: { info: 'deleted todo successfully' }, status: :no_content)
    end

    def index
        todos = user.todos.all
        app_response(message: 'success', data: todos)
    end

    private

    def todo_params
        params.permit(:title, :description, :status, :priority)
    end
end
