<template>
    <div>
        <div class="cont">
            <navbar></navbar>
        </div>
        <div class="content">
            <div class="cont">
                <h2>{{title}}</h2>
                <div class="categories">
                    <div class="row">
                        <div class="col-lg-6" v-for="cat in category" :key="cat.id">
                          <img :src="cat.image" :alt="cat.image">
                          <router-link :to="`/detail/${cat.id}/${cat.category_id}`">
                          <a>{{cat.product_name}}</a>
                          </router-link>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <Footer></Footer>
    </div>
</template>

<script>
    import Navbar from '../components/navbar.vue'
    import Footer from '../components/footer.vue'
    export default {
        name: 'category',
        components: {
            Navbar,
            Footer
        },
        data() {
            return {
                id: this.$route.params.id,
                category: [],
                itemsPerRow: 2,
                title:'',
            }
        },
        mounted() {
            this.getCategory();
            this.getTitle();
        },
        methods: {
            getCategory() {
                axios.get('/api/categories/' + this.id)
                    .then(res => this.category = res.data.product);
            },
            getTitle(){
                axios.get('/api/categories/' + this.id)
                .then(res => this.title = res.data.category_name)
            }
        }
    }

</script>

<style lang="scss" scoped>
  @import '../../sass/variables';

.content h2{
    padding: 133px 0 77px 0;
    font-size: 2rem;
}
.content a{
    color: $black;
    font-size: 1.2rem;
    margin-top: 30px;
}
.content a:hover{
    color: $main-color;

}
.content .categories img{
    width: 90%;
}
.content .categories .col-lg-6{
    margin-bottom: 80px;
}
.content .categories .col-lg-6:nth-child(even){
    margin-top: 80px;
}
@media only screen and (max-width: 1024px) {
    .cont {
        margin-left: 75px;
        margin-right: 75px;
    }

}
@media only screen and (max-width:991px){
    .content .categories .col-lg-6:nth-child(even){
        margin-top: 0;
    }

}
@media only screen and (max-width:768px) {
    .cont {
        margin-left: 50px;
        margin-right: 50px;
    }
}

@media only screen and (max-width:375px) {

    *,
    body {
        font-size: 14px;
    }
}
@media only screen and (max-width:320px) {

    *,
    body {
        font-size: 12px;
    }

    .cont {
        margin-left: 20px;
        margin-right: 20px;
    }
}
@media only screen and (max-width:240px) {
    .cont {
        margin-left: 15px;
        margin-right: 15px;
    }
}
</style>
