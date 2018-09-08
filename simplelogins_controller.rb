class SimpleloginsController < ApplicationController
  def new
  end
  def login
    @userinput = Userdb.find_by(name: params[:input][:name])
    if @userinput && @userinput.authenticate(params[:input][:userpw])
      render 'login'
    else
      render 'loginerror'
    end
  end

  def create
    @usercheck = Userdb.find_by(name: params[:input][:name])
    if @usercheck
      render 'existname'
    else
      @userinput = Userdb.new(params.require(:input).permit(:name, :userpw))

      @userinput.save
      render 'index'
    end
  end
end
