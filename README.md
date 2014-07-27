How to use the tag app  
$ git clone https://github.com/tsukimoto/sgtf.git  
$ cd sgtf  
$ bundle exec rake db:migrate  

How to develop the tag app  
1st Step  
To make the Database  
$ rails g model Tag name  
$ rake db:migrate  

2nd Step  
To make the controller  
$ rails g controller Tags  

3rd Step  
To make the routing  
$ vi config/routes.rb  
-> resources :tags  

To confirm the routing  
$ rake routes  

4th Step  
To make the views(index.html.erb, style.css)  
$ vi index.html.erb  
$ vi style.css  

5th Step  
To change the root path  
$ vi config/routes.rb  
-> root 'projects#index'  

6th Step  
To make the "def create"  
$ vi app/controllers/tags_controller.rb  
Please check the source code.  

7th Step  
To configure the validation  
$ vi app/models/tag.rb  

8th Step  
To make the edit form  
$ vi index.html.erb  
$ vi tag_controller.rb -> to add [def end]  
$ vi edit.html.erb  

9th Step  
To make the delete function  
$ vi index.html.erb  
$ vi tag_controller.rb -> to add [def destroy]  
