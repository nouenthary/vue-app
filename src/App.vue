<template>
    <v-layout>
        <v-app>
            <v-app-bar color="primary" density="compact">
                <template v-slot:prepend>
                    <v-app-bar-nav-icon></v-app-bar-nav-icon>
                    Vue application
                </template>

                <template v-slot:append>
                    <v-btn icon="mdi-dots-vertical"></v-btn>
                </template>

            </v-app-bar>
            <main>
                <v-container fluid>
                    <nav>
                        <router-link to="/">
                            <v-btn color="primary">
                                home
                            </v-btn>
                        </router-link>
                        |
<!--                        <router-link to="/about">-->
<!--                            <v-btn color="primary">-->
<!--                                about-->
<!--                            </v-btn>-->
<!--                        </router-link>-->
<!--                        |-->
                        <router-link to="/login">
                            <v-btn color="red">
                                Login
                            </v-btn>
                        </router-link>
                    </nav>
                    <router-view/>
                </v-container>
            </main>
        </v-app>
    </v-layout>
</template>

<style>
    #app {
        font-family: Avenir, Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        text-align: center;
        color: #2c3e50;
    }

    nav {
        padding: 30px;
    }

    nav a {
        font-weight: bold;
        color: #2c3e50;
    }

    nav a.router-link-exact-active {
        color: #42b983;
    }
</style>
