class BoxesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @box = Box.all.order("created_at DESC")
  end

  def new
    @box = Box.new
 end

 def create
  @box = Box.new(box_params)
   if @box.save
     redirect_to root_path
     else
       render :new
   end
 end


 def edit
  @box = Box.find(params[:id])
 end


 def show
  @box = Box.find(params[:id])
  #@item = Item.find(params[:id])
 end

 def update
  @box = Box.find(params[:id])
  if @box.update(box_params)
    redirect_to root_path
  else
    render :edit
  end
end

def destroy
  @box = Box.find(params[:id])
  if @box.destroy
    redirect_to root_path
  else
    redirect_to edit_item_path
  end
end
 
  

private
def box_params
  params.require(:box).permit(:box_name, :box_memo,:image).merge(user_id: current_user.id)
end

end
