class ItemsController < ApplicationController

  def index
    @box = Box.includes(:item) 
    box = Box.find(params[:box_id])
    @item = box.item
  end
  

  def show
    @box = Box.find(params[:id])
    box = Box.find(params[:box_id])
    @item = box.item
   
  end

  def new
    #@box = Box.find(params[:id])
  end

  def create
    #@box = Box.find(params[:id])
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
      else
        render :new
    end
  end


  def edit
    @item = Item.find(params[:id])
  end

   def update
    binding.pry
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
  end


  
  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  private
   def item_params
     params.permit(:item_name, :item_memo, :image, :box_id, :user_id).merge(user_id: current_user.id, box_id: params[:box_id])
   end
   
end
