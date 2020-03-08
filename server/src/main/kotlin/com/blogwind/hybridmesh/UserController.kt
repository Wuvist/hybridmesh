package com.blogwind.hybridmesh

import com.blogwind.hybridmesh.model.UserRepo
import io.micronaut.http.HttpRequest
import io.micronaut.http.HttpResponse
import io.micronaut.http.MediaType
import io.micronaut.http.annotation.*
import io.micronaut.http.netty.cookies.NettyCookie
import java.net.URI

@Controller("/user")
class UserController {
    @Get("/")
    @Produces(MediaType.TEXT_HTML)
    fun home(request: HttpRequest<*>): HttpResponse<String> {
        if (!request.cookies.contains("user")) {
            return HttpResponse.redirect<String>(URI("/user/login"))
        }
        val user = UserRepo.getUser(request.cookies.get("user").value.toInt())

        return HttpResponse.ok<String>().body("Hello ${user.username} <a href='/user/logout'>Logout</a>")
    }

    @Get("/login")
    @Produces(MediaType.TEXT_HTML)
    fun login(): String {
        return "<form method='post' action='/user/login'>username: <input type='text' name='username'> password: <input type='text' name='password'> <input type=\"submit\" value=\"Submit\"></form>"
    }

    @Post("/login", consumes = [MediaType.APPLICATION_FORM_URLENCODED])
    @Produces(MediaType.TEXT_PLAIN)
    fun doLogin(@Body body: Map<String, String>): HttpResponse<String> {
        val user = UserRepo.getUser(body["username"], body["password"])

        if (user == null) {
            return HttpResponse.notAllowed<String>().body("Invalid Username/Password")
        }

        val resp = HttpResponse.redirect<String>(URI("/user"))
        val ck = NettyCookie("user", user.userId.toString())
        ck.path("/")
        resp.cookie(ck)

        return resp
    }

    @Get("/logout", consumes = [MediaType.APPLICATION_FORM_URLENCODED])
    fun logout(): HttpResponse<String> {
        val resp = HttpResponse.redirect<String>(URI("/user/login"))
        val ck = NettyCookie("user", "")
        ck.maxAge(0)
        resp.cookie(ck)

        return resp
    }
}