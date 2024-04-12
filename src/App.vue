<template>

    <v-app :theme="state.theme">
        <v-app-bar color="blue" density="compact" app fixed hide-on-scroll>
            <template v-slot:prepend>
                <v-app-bar-nav-icon></v-app-bar-nav-icon>
                Vue application
            </template>

            <v-toolbar-items class="hidden-sm-and-down">
                <v-btn text @click="login('/')">Home</v-btn>
                <v-btn text @click="login('/course')">Course</v-btn>
                <v-btn text @click="login('/login')">Login</v-btn>
            </v-toolbar-items>

            <v-icon @click="toggleTheme()">
                mdi-brightness-6
            </v-icon>

            <template v-slot:append>
                <v-btn icon="mdi-dots-vertical"></v-btn>
            </template>

        </v-app-bar>
        <main>
            <v-container fluid>
                <nav>
                </nav>
                <router-view/>
            </v-container>
        </main>
    </v-app>

</template>

<script setup>
    import {useRouter} from "vue-router";
    import {reactive, onMounted} from "vue";

    const route = useRouter();

    const state = reactive({
        theme: "light",
    });

    onMounted(() => {
        let theme = localStorage.getItem('theme');

        if (theme === null) {
            localStorage.setItem('theme', 'light');
            theme = 'light';
        }

        state.theme = theme;
    });

    function login(path = '/') {
        route.push(path);
    }

    function toggleTheme() {
        state.theme = state.theme === 'dark' ? 'light' : 'dark';
        localStorage.setItem('theme', state.theme);
    }

</script>

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
