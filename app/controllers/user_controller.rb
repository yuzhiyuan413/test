class UserController < ApplicationController
	def index
	end

	def selectable
	end
	
	def tab
	end
	
	def helloWorld
	end

	def bind
	end

	def todo
	end
	def todo_list
		_todos = Todo.where(:recsts=>'0').offset((params[:page].to_i)*4).limit(4)
		render json:_todos
	end
	def todo_count
		_count = Todo.where(:recsts=>'0').count
		render json:_count
	end
	def todo_add
		_todo = Todo.create({:title=>params[:title]})
		render json: {status:true,data:_todo}
	end

	def todo_delete
		_todo = Todo.where(:id=>params[:id].split(',').map{|x|x.to_i}).delete_all
		render json: {status: true}	
	rescue => ex
    render json: {status:false,msg:ex.message} 
	end
  
  def todo_edit
  	_todo = Todo.find(params[:id])
  	_attrs = params.reject{|k,| not Todo.attribute_names.include? k}
    _todo.update_attributes(_attrs)
    render json: {status: true,data:_todo}	
  end
end
