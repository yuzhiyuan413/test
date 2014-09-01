class MemberController < ApplicationController
	def home
	end
	def list
  	render json: Mem.order('created_at desc').offset((params[:page].to_i-1)*5).limit(5)
  end

  def new
  	_mem = Mem.create(params.require(:mem).permit(:nc,:age,:userid))
  	render json:{status:true,valid:_mem.valid?,item:_mem,msg:_mem.errors}
  end

  def remove
    Mem.delete(params[:id])
    render json:{status:true}
  end

	def msg
  end
end
