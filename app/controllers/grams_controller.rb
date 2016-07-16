class GramsController < ApplicationController

  def create
        @gram = Gram.create(gram_params)
        if @gram.valid?
          redirect_to root_path(@gram)
        else
          render :new, status: :unprocessable_entity
        end
  end

  def new
      @gram = Gram.new
  end

  def index
  end

  private

  def gram_params
    params.require(:gram).permit(:message)
  end
end
