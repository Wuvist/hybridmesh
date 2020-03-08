package com.blogwind.hybridmesh.model

import java.security.InvalidParameterException

class UserRepo {
    companion object {
        private val users: List<User> = listOf<User>(
                User("admin", "admin", 1),
                User("user", "user", 2),
                User("test", "test", 3)
        )

        fun getUser(username: String?, password: String?): User? {
            for (it in users) {
                if (it.username == username && it.password == password) {
                    return it
                }
            }

            return null
        }

        fun getUser(userId: Int): User {
            for (it in users) {
                if (it.userId == userId) {
                    return it
                }
            }

            throw InvalidParameterException("Invalid userId $userId")
        }
    }
}