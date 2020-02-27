package com.blogwind.hybridmesh

import io.micronaut.runtime.Micronaut

object Application {

    @JvmStatic
    fun main(args: Array<String>) {
        Micronaut.build()
                .packages("com.blogwind.hybridmesh")
                .mainClass(Application.javaClass)
                .start()
    }
}