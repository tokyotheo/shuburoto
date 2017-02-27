class PeopleController < ApplicationController
	before_action :step0, only: :step1
	def step1
		#@person = Person.find(1)
	end

	def step2
	 @people = Person.all
	end		

	def step3
		flash[:notice] = "step4に移動しました。"
	    redirect_to '/step4'
	end

	def step4
		@message = flash[:notice]
	end

	def step5
		@array = [1,2,3]
	end
    
    private
    def step0
    	@person = Person.find(2)
    end
end		