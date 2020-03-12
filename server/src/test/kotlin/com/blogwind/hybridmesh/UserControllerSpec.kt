package com.blogwind.hybridmesh

import io.kotlintest.matchers.string.shouldContain
import io.kotlintest.specs.StringSpec
import io.micronaut.http.client.HttpClient
import io.micronaut.http.client.annotation.Client
import io.micronaut.runtime.server.EmbeddedServer
import io.micronaut.test.annotation.MicronautTest
import javax.inject.Inject

@MicronautTest
class UserControllerSpec : StringSpec() {
    @Inject
    lateinit var server: EmbeddedServer

    @Inject
    @field:Client("/")
    lateinit var client: HttpClient

    init {
        "dummy test" {
            val rsp: String = client.toBlocking()
                    .retrieve("/user/login")
            rsp shouldContain "action='/user/login'"
        }
    }
}
