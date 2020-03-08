package com.blogwind.hybridmesh

import com.blogwind.hybridmesh.model.Blog
import com.blogwind.hybridmesh.model.BlogRepo
import com.blogwind.hybridmesh.model.UserRepo
import io.micronaut.http.HttpRequest
import io.micronaut.http.HttpResponse
import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get

@Controller("/blog")
class BlogController {
    @Get("/")
    fun list(request: HttpRequest<*>): HttpResponse<List<Blog>> {
        if (!request.cookies.contains("user")) {
            return HttpResponse.notFound()
        }
        val user = UserRepo.getUser(request.cookies.get("user").value.toInt())

        return HttpResponse.ok(BlogRepo.listBlog(user.userId))
    }

    @Get("/show")
    fun get(request: HttpRequest<*>): HttpResponse<Blog> {
        if (!request.cookies.contains("user")) {
            return HttpResponse.notFound()
        }
        val user = UserRepo.getUser(request.cookies.get("user").value.toInt())

        return HttpResponse.ok(BlogRepo.getBlog(user.userId, request.parameters.get("blogId")!!.toInt()))
    }
}