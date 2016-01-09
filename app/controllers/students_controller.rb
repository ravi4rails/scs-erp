class StudentsController < ApplicationController 
  before_action :set_student, :on => [:edit, :show, :destroy, :update]
  private
    def set_student
      @student = Student.find(params[:id])
    end
end