class MainController < ApplicationController
  attr_accessor :lecture_domain
  attr_accessor :lecture_domain_id
  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /main/domain/1
  def domain
    @lecture_domain = ""
    @lecture_domain_id = params[:id]
    case(params[:id])
    when "0"
      @lectures = Lecture.find(:all, :conditions => 'no < 100')
      @lecture_domain = "聖書神学"
    when "1"
      @lectures = Lecture.find(:all, :conditions => 'no >= 100 and no < 300')
      @lecture_domain = "組織神学"
    when "2"
      @lectures = Lecture.find(:all, :conditions => 'no >= 300 and no < 400')
      @lecture_domain = "歴史神学"
    when "3"
      @lectures = Lecture.find(:all, :conditions => 'no >= 400 and no < 500')
      @lecture_domain = "実践神学"
    when "4"
      @lectures = Lecture.find(:all, :conditions => 'no >= 500')
      @lecture_domain = "その他"
    end
    respond_to do |format|
      format.html
    end
  end

  # GET /main/lesson/1
  def lesson
    @lecture_no = params[:id]
    @lecture = Lecture.find(@lecture_no)
    purchased_by_user = Purchase.find(:all, :conditions => ['user_id = ?', @current_user.user_id])
    @is_purchased = false
    purchased_by_user.each do |pc|
       @is_purchased = true if pc.lecture_no == @lecture.no
    end
    cond = 'lecture = ' + params[:id]
    @lessons = Lesson.find(:all, :conditions => cond)
    respond_to do |format|
      format.html
    end
  end

end
