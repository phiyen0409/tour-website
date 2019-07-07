/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)
const routes = [
    { path: '/admin/dashboard', component: require('./components/admin/Dashboard.vue').default },
    { path: '/admin/chitiettour', component: require('./components/admin/ChiTietTour.vue').default },
    { path: '/admin/diadiem', component: require('./components/admin/DiaDiem.vue').default },
    { path: '/admin/khachhang', component: require('./components/admin/KhachHang.vue').default },
    { path: '/admin/lichtrinh', component: require('./components/admin/LichTrinh.vue').default },
    { path: '/admin/nhanvien', component: require('./components/admin/NhanVien.vue').default },
    { path: '/admin/tintuc', component: require('./components/admin/TinTuc.vue').default },
    { path: '/admin/nhanxet', component: require('./components/admin/NhanXetKhachHang.vue').default },
    { path: '/admin/dattour', component: require('./components/admin/DatTour.vue').default },
    { path: '/admin/tour', component: require('./components/admin/Tour.vue').default },
]

const router = new VueRouter({
    mode: 'history',
    routes // short for `routes: routes`
})

window.Fire = new Vue();

const api = window.host + '/api';
Vue.prototype.$Api = api;

Vue.prototype.$Host = window.host;

const app = new Vue({
    el: '#app',
    router,
});
