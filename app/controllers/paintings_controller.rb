class PaintingsController < ApplicationController
  def index
  	@paintings = Painting.all

  end

  def new
  	@painting = Painting.new
  end

  def create
  	 @painting = Painting.new(painting_params)
 
     if @painting.save
        redirect_to paintings_path, notice: "The painting #{@painting.name} has been uploaded."
     else
        render "new"
     end
  end

  def destroy

  	@painting = Painting.find(params[:id])
    @painting.destroy
    redirect_to paintings_path, notice: "The Painting #{@painting.name} has been deleted."
  end



  private
def painting_params
params.require(:painting).permit(:name, :image)
end

end
