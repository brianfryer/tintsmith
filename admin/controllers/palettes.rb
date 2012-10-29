Admin.controllers :palettes do

  get :index do
    @palettes = Palette.all
    render 'palettes/index'
  end

  get :new do
    @palette = Palette.new
    render 'palettes/new'
  end

  post :create do
    @palette = Palette.new(params[:palette])
    if @palette.save
      flash[:notice] = 'Palette was successfully created.'
      redirect url(:palettes, :edit, :id => @palette.id)
    else
      render 'palettes/new'
    end
  end

  get :edit, :with => :id do
    @palette = Palette.find(params[:id])
    render 'palettes/edit'
  end

  put :update, :with => :id do
    @palette = Palette.find(params[:id])
    if @palette.update_attributes(params[:palette])
      flash[:notice] = 'Palette was successfully updated.'
      redirect url(:palettes, :edit, :id => @palette.id)
    else
      render 'palettes/edit'
    end
  end

  delete :destroy, :with => :id do
    palette = Palette.find(params[:id])
    if palette.destroy
      flash[:notice] = 'Palette was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Palette!'
    end
    redirect url(:palettes, :index)
  end
end
