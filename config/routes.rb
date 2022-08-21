Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "profile", to: "profile#userInfo"
  # to post userINfo

  post "userId",to: "profile#sendUserId"
  #to get userId

  post "createBlog", to: "blog#createBlog"
  # to create blog

  get "myBlogInfo/:postId", to: "blog#showParticularBlog"
  #to get post info


  put "editMyBlog/:postId", to: "blog#editMyBlog"
  # edit the blog

  get "deleteMyBlog/:postId", to: "blog#deleteMyBlog"
  # delete the blog

  get "myBlogs/:userId", to: "blog#showMyBlogs"
  # to see my blogs only

  get "allBlogs", to: "blog#showAllBlogs"
  #to see all blogs

  get "blogsWithParticularTag/:tag", to: "blog#showBlogsWithParticularTag"
  #to see particular tag blogs info



  
end
