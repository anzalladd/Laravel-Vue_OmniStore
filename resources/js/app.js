
import Vue from 'vue'
require('./bootstrap');
import VueRouter from 'vue-router'
import axios from 'axios';
import VueAxios from 'vue-axios';
import App from './App.vue'
import Home from './layouts/home.vue'
import Category from './layouts/category.vue'
import Detail from './layouts/detail.vue'
import Login from './components/login.vue'
import Register from './components/register.vue'
import Dashboard from './components/dashboard.vue'
import homeDashboard from './components/homeDashboard.vue'
Vue.use(VueRouter)
Vue.use(VueAxios, axios);
axios.defaults.baseURL = 'http://localhost:8000/api/';
const router = new VueRouter({
    mode: 'history',
    routes: [
        {
            path: '/',
            name: 'home',
            component: Home
        },
        {
            path: '/product/:id',
            name: 'category',
            component: Category
        },
        {
            path: '/detail/:id/:category_id',
            name: 'detail',
            component: Detail
        },
        {
            path: '/register',
            name: 'register',
            component: Register
        },
        {
            path: '/login',
            name: 'login',
            component: Login
        },
        {
            path: '/dashboard',
            name: 'dashboard',
            component: Dashboard,
            children:[
                {
                    path:'', component: homeDashboard
                }
            ],
            meta: {
                auth: true
            }
        },
    ],
});

Vue.router = router

Vue.use(require('@websanova/vue-auth'), {
   auth: require('@websanova/vue-auth/drivers/auth/bearer.js'),
   http: require('@websanova/vue-auth/drivers/http/axios.1.x.js'),
   router: require('@websanova/vue-auth/drivers/router/vue-router.2.x.js'),
});
App.router = Vue.router
new Vue(App).$mount('#app');
