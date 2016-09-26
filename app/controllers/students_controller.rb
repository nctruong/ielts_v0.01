#require 'carrierwave/orm/activerecord'
class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  # student POST   /student
  def create
    @student = Student.new(student_params)

    if @student.save
      flash[:success] = "Successfully created user. #{@student.avatar}"
      redirect_to students_path
    else
      flash[:warning]   = "recheck your data entered"
      render 'new'
    end
  end
  # new_student GET    /student/new
  def new
    @student = Student.new
  end
  # edit_student GET    /student
  def edit
    @student = Student.find(id_param)
    @id = id_param
  end
  # GET    /student
  def show
    @student = Student.find(id_param)

  end
  # PATCH  /students(.:format)                students#update
  def update
    @student = Student.find(id_param)

    if @student.update(student_params)
      redirect_to students_index_path
    else
      render 'edit'
    end
  end
  # DELETE /student
  def destroy
    @student = Student.find(id_param)
    @student.destroy

    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :sex, :phone, :email, :avatar)
  end

  private
  
  def id_param
    params[:id]
  end
end
