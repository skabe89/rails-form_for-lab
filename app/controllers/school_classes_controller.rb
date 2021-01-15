class SchoolClassesController < ApplicationController

  def index
  end

  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.new(class_params)
    if @class.save
      redirect_to school_class_path(@class)
    else
      redirect_to school_classes_path
    end
  end

  private
  
  def class_params
    params.require(:school_class).permit
  end

end