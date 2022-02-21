class PagesController < ApplicationController
  def home
    # In Rails, instance variables (@my_variable) have only one purpose:
    # To be "sent" as an argument to the view!!
    @students = %w[rafael dan julia edwards]

    # raise -> this line braks the code and prompt a terminal in the browser

    if params[:student_name] # same as params[:student_name] && params[:student_name] != ""
      @students = @students.select { |student| student.start_with?(user_input.downcase) }
    end

    if params[:student_name_length]
      @students = @students.select { |student| student.length > params[:student_name_length].to_i }
    end
  end

  def about
  end

  def contact
  end
end
