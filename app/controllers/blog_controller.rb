class BlogController < ApplicationController

    def createBlog
        userId = params[:userId]
        title = params[:title]
        description = params[:title]
        authorName = params[:authorName]
        dateTime = params[:dateTime]
        tags = params[:tags]
        imageUrl = params[:imageUrl]

        blogInfo = Blog.new({userId:userId,title:title,description:description,authorName:authorName,dateTime:dateTime,tags:tags,imageUrl:imageUrl})
        blogInfo.save
        render :json => blogInfo
    end


    def editMyBlog
        editedBlogInfo = Blog.find(params[:postId])
        # userId = params[:userId]
        title = params[:title]
        description = params[:description]
        # authorName = params[:authorName]
        imageUrl = params[:imageUrl]
        tags = params[:tags]
        editedBlogInfo.update({title:title,description:description,imageUrl:imageUrl,tags:tags})
        editedBlogInfo.save
        render :json => editedBlogInfo
    end

    def deleteMyBlog
        # provide userId or postId
        deletedBlog = Blog.where(id:params[:postId]).delete_all
        # Blog.save
        render :json => deletedBlog
        
    end

    def showAllBlogs
        render :json => Blog.all
    end

    def showMyBlogs
        # provide with userId
    
        myBlogs = Blog.where(userId:params[:userId])
        render :json => myBlogs
    end

    def showParticularBlog

        blogInfo = Blog.where(id:params[:postId])
        render :json => blogInfo
    end

    def showBlogsWithParticularTag

        blogs = Blog.where(tags:params[:tags])
        render :json => blogs
    end

    
end


