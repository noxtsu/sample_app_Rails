class TodolistsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    list = List.new(list=params)
    list.save
    redirect_to '/top'
  end
  
  private
  def list=params
    params.require(:list).permit(:title,:body)
  end
end
