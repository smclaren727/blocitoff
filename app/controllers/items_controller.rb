class ItemsController < ApplicationController

  def index
    @user = current_user
    @items = current_user.items
  end

  def show

  end

  def new
    @item = current_user.items.build
  end

  def create
    @item = current_user.items.build(item_params)

    if @item.save
      flash[:notice] = "Task was saved."
    else
      flash[:error] = "There was an error saving the task. Please try again."
    end

    redirect_to root_path
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "The task was destroyed"
      redirect_to items_path
    else
      flash[:notice] = "There was a problem destroying the task"
      redirect_to items_path
    end
  end


private

  def item_params
    params.require(:item).permit(:name)
  end
end