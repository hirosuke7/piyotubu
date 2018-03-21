class HiyokosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_hiyoko, only: [ :show, :edit, :update, :destroy]

  def index
    #@hiyokos = Hiyoko.page(params[:page])
    @q = Hiyoko.ransack(params[:q])
    @hiyokos = @q.result.page(params[:page])
  end

  def show
    
    @comment = Comment.new
    @comments = @hiyoko.comments
  end

def new
  @hiyoko = Hiyoko.new
end

def create
  @hiyoko = Hiyoko.new(hiyoko_params)
  if @hiyoko.save
      redirect_to @hiyoko
  else
    render :new
  end
end

def edit
end

def update
  if  @hiyoko.update(hiyoko_params)
    redirect_to @hiyoko
  else
    render :edit
  end
end


def destroy
  @hiyoko.destroy
  redirect_to hiyokos_path
end

def set_hiyoko
  @hiyoko = Hiyoko.find(params[:id])
end


private

def hiyoko_params
  params.require(:hiyoko).permit(
    :family_name,
    :given_name,
    :email,
  )
end
end
