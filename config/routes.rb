Rails.application.routes.draw do

  get("/", {:controller => "application", :action => "home"})

  get("/dice/2/6", {:controller => "application", :action => "two_six"})

  get("/dice/2/10", {:controller => "application", :action => "two_ten"})

  get("/dice/1/20", {:controller => "application", :action => "one_twenty"})

  get("/dice/5/4", {:controller => "application", :action => "five_four"})

  get("/dice/:number_of_dice/:number_of_sides", {:controller => "application", :action => "random"})
end
