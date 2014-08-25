## How to use the tag app
$ git clone https://github.com/tsukimoto/sgtf.git  
$ cd sgtf  
$ bundle exec rake db:migrate  

## 1st Step
To make the Database  
$ rails g model Tag name  
$ rake db:migrate  

## 2nd Step
To make the controller  
$ rails g controller Tags  

## 3rd Step
To make the routing  
$ vi config/routes.rb  
-> resources :tags  

To confirm the routing  
$ rake routes  

## 4th Step
To make the views(index.html.erb, style.css)  
$ vi index.html.erb  
$ vi style.css  

## 5th Step
To change the root path  
$ vi config/routes.rb  
-> root 'projects#index'  

## 6th Step
To make the "def create"  
$ vi app/controllers/tags_controller.rb  
Please check the source code.  

## 7th Step
To configure the validation  
$ vi app/models/tag.rb  

## 8th Step
To make the edit form  
$ vi index.html.erb  
$ vi tag_controller.rb -> to add [def end]  
$ vi edit.html.erb  

## 9th Step
To make the delete function  
$ vi index.html.erb  
$ vi tag_controller.rb -> to add [def destroy]  

## 追加作業No.1(Ruby on Railsにbootstrapをインストールする方法)
参考：http://ubiqlog.com/archives/8749
Gemfileに以下を記述する。
```
gem 'less-rails'
gem 'twitter-bootstrap-rails'
gem 'execjs'
```

また、以下の記述をコメントアウトする。
```
gem 'sass-rails'
```

その後、以下のコマンドを入力する。
```
$ bundle install
$ rails g bootstrap:install
$ rails g bootstrap:layout application
```

## 追加作業No.2（bookmarkアプリ用のhtmlを組み込む）  
app/views/layouts/application.html.erbを編集し、<body></body>の中で、
```
<div>
  <%= bootstrap_flash %>
  <%= yield %>
</div>
```
以外は削除する。（余計な内容は削除する。）
