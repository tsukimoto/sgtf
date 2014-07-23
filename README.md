タグコントローラの作成  
$ rails g controller tags index show new

タグモデルの作成  
$ rails g model tag name:string


データベースへ反映  
$ rake db:migrate

ビューのnewを編集し、ブックマーク画面っぽくする。  
$ emacs app/views/tags/new.html.erb  
※注意：エンコードはUTF-8にすること。emacsで保存すると、S-JISで保存され、不可解なエラー発生

スタイルシート(どっかから取ってきた)を追加する。  
$ cp style.css app/assets/stylesheets/

ビューのnewを編集し、タグ追加を行うコントロールを作成する。  
$ emacs app/views/tags/new.html.erb  
  ↓  
  <%= form_for Tag.new do |f| %>  
    <%= f.text_field :name %>  
    <%= f.submit %>  
  <% end %>  
  上記を入力する。  

ルーティング部分を編集し、ポストリクエストにはcreateが応えるようにする。  
  $ emacs config/routes.rb  
    ↓  
  post "tags" => "tags#create"  
  を追加する  

createアクションを定義する。  
  $ emacs app/controllers/tags_controller.rb  
  ↓  
  def create  
    @tag = Tag.new  
    @tag.name = params[:tag][:name]  
    @tag.save  
    redirect_to '/tags/new/'  
  end  
  を追加する。  

追加したタグを全て表示するようにする。  
  $ emacs app/controllers/tags_controller.rb  
  以下のように編集する。  
  def new  
  end  
    ↓  
  def new  
    @tags = Tag.all  
  end  

データベースに登録したタグ名全てを表示するようなマークアップを記述する。  
  $ emacs app/views/tags/new.html.erb  
  ↓  
        <% @tags.each do |tag| %>  
          <li><%= tag.name %></li>  
        <% end %>  
  上記をタグ一覧部分の<ul></ul>内に記述する。  

