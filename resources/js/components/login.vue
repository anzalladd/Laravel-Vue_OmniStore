<template>
    <div class="cont mt-5">
        <div class="alert alert-danger" v-if="error">
            <p>There was an error, unable to sign in with those credentials.</p>
        </div>
        <form autocomplete="off" @submit.prevent="login()" method="post">
            <input type="hidden" name="_token" :value="csrf">
            <div class="form-group">
                <label for="email">E-mail</label>
                <input type="email" id="email" class="form-control" placeholder="user@example.com" v-model="email"
                    required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" class="form-control" v-model="password" required>
            </div>
            <input type="submit" class="btn btn-primary" value="Submit">
        </form>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                email: null,
                password: null,
                error: false,
                csrf: document.querySelector('meta[name="csrf-token"]').getAttribute('content')
            }
        },
        methods: {
            login() {
                var app = this
                this.$auth.login({
                    params: {
                        email: app.email,
                        password: app.password
                    },
                    success: function () {},
                    error: function () {},
                    rememberMe: true,
                    redirect: '/dashboard',
                    fetchUser: true,
                });
            },
        }
    }

</script>
