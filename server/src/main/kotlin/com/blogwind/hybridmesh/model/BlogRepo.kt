package com.blogwind.hybridmesh.model

class BlogRepo {
    companion object {
        private val blogs = listOf<Blog>(
                Blog(1, 2, "My Blog 1", "blah blah"),
                Blog(2, 2, "My Blog 2", "ha ha"),
                Blog(3, 3, "Test blog", "testing my blog")
        )

        fun listBlog(userId: Int): List<Blog> {
            return blogs.filter { it.userId == userId }
        }

        fun getBlog(userId: Int, blogId: Int): Blog {
            return blogs.first { it.userId == userId && it.blogId == blogId }
        }
    }
}