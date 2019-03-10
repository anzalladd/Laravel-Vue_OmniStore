
import Vue from 'vue'
require('./bootstrap');
import VueRouter from 'vue-router'
import App from './App.vue'
import Home from './layouts/home.vue'
import Category from './layouts/category.vue'
import Detail from './layouts/detail.vue'
Vue.use(VueRouter)
const router = new VueRouter({
    mode: 'history',
    routes: [
        {
            path: '/',
            name: 'home',
            component: Home
        },
        {
            path: '/:id',
            name: 'category',
            component: Category
        },
        {
            path: '/detail/:id/:category_id',
            name: 'detail',
            component: Detail
        }

    ],
});
const app = new Vue({
    el: '#app',
    components: { App },
    template: '<app></app>',
    router
});
