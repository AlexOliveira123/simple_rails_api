class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: { 'user_name': 'Alex' }, status: 200
  end

  def create
    user = User.create(name: params_users[:name], age: params_users[:age])
    if user
      render json: { 'message': 'User created with successful' }, status: 201
    else
      render json: { 'message': 'User not created' }, status: 400
    end
  end

  def show
    user = User.find(params_users[:id])
    if user
      render json: { id: user.id, name: user.name }, status: 200
    else
      render json: { 'message': 'User not found' }, status: 404
    end
  end

  def show_all
    users = User.all.map do |user|
      { id: user.id, name: user.name }
    end
    render json: users, status: 200
  end

  def update
    user = User.find(params_users['id'])
    if verify_update_params && user
      user.update(params_users)
      render json: { 'message': "User #{user.id} updated" }, status: 200
    else
      render json: { 'message': "User #{params_users['id']} not found" }, status: 404
    end
  end

  private

  def params_users
    params.permit(:id, :name, :age)
  end

  def verify_update_params
    params_users['name'].present? && params_users['age'].present?
  end
end
