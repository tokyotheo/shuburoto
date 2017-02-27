Rails.application.routes.draw do


	get '/step1' =>'people#step1'
	get '/step2' =>'people#step2'
    get '/step3' =>'people#step3' 
    get '/step4' =>'people#step4' 
    get '/step5' =>'people#step5' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
