class RegistrationsController < ApplicationController 
def login
end

def new
  @User = User.new
end

def create
  @User = User.new(user_params)
  if @User.save
    session[:user_id] = @User.id
    redirect_to root_path
  else
    render :new, status: :unprocessable_entity, content_type: "text/html"
    headers["Content-Type"] = "text/html"
  end
end

private

def user_params
  params.require(:user).permit(:name, :email, :password)
end
end