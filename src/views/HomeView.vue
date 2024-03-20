<script type="ts">
    import {defineComponent, reactive, onMounted} from "vue";
    import {useRouter} from "vue-router";

    export default defineComponent({
        name: "HomeView",
        setup() {
            const route = useRouter();

            const state = reactive({
                login: {
                    username: 'admin',
                    password: 'admin'
                }
            });


            onMounted(() => {
                localStorage.removeItem('token');
            });

            const login = () => {
                //console.log(state);
                let token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c';
                if (state.login.password !== '' || state.login.password !== '') {

                    localStorage.setItem('token', token);

                    route.push('/');
                }
            };

            return {state, login}
        }
    });

</script>

<template>
    <div>
        <h1 class="text-uppercase">
            Login application {{state.login.password}}
        </h1>
        <form class="form">
            <div class="">
                <v-text-field
                        variant="solo"
                        label="Username"
                        v-model="state.login.username"
                />

                <v-text-field
                        variant="solo"
                        label="Password"
                        v-model="state.login.password"
                />

                <v-btn v-on:click="login" size="large" block color="primary">
                    Sign in
                </v-btn>
            </div>
        </form>
    </div>
</template>


<style>
    .form {
        margin: auto;
        width: 400px;
    }
</style>
