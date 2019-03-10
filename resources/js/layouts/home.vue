<template>
<div>
    
     <!-- Header -->
    <header>
        <div class="cont">
            <!-- NavBar -->
            <Navbar></Navbar>
            <!-- End NavBar -->
            <!-- Title -->
            <div class="title text-center">
                <h1>Abstrac Creativity</h1>
                <h3>Giving the experience of looking for merchandise products to be<br>
                    more colorful, with the creativity we put on the product</h3>
            </div>
            <!-- End Title -->
        </div>
        <!-- Pattern Head -->
        <div class="pattern-head">
            <img src="images/pattern-atas-fix.svg" alt="">
        </div>
        <!-- End Pattern Head -->
    </header>
    <!-- End Of Header -->
    <!-- <div v-for="category in categories">
        <p>{{category.category_name}}</p>
    </div> -->
     <!-- Content -->
    <div class="content">
        <div class="cont">
            <h2>Category</h2>
            <!-- Categories -->
            <div class="categories">

                <div class="category_1">
                    <div class="row">
                        <div class="col-lg-5">
                            <div v-for="category in isOne" :key="category.id">
                            <img :src="category.category_image" alt="Cloth">
                            <router-link to="/1">
                            <a>{{category.category_name}}</a>
                            </router-link>
                            </div>
                        </div>
                        <div class="offset-lg-1 col-lg-6">
                            <div v-for="category in isTwo" :key="category.id">
                            <img :src="category.category_image" alt="Totebag">
                              <router-link to="/2">
                            <a>{{category.category_name}}</a>
                            </router-link>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="category_2">
                    <div class="row">
                        <div class="col-lg-6">
                            <div v-for="category in isThree" :key="category.id">
                            <img :src="category.category_image" alt="Cloth">
                            <router-link to="/3">
                            <a>{{category.category_name}}</a>
                            </router-link>
                            </div>
                        </div>
                        <div class="col-lg-offset-1 col-lg-5">
                            <div v-for="category in isFour" :key="category.id">
                            <img :src="category.category_image" alt="Cloth">
                              <router-link to="/4">
                            <a>{{category.category_name}}</a>
                            </router-link>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="category_3">
                    <div class="row">
                        <div class="col-lg-7">
                            <div v-for="category in isFive" :key="category.id">
                            <img :src="category.category_image" alt="Cloth">
                              <router-link to="/5">
                            <a>{{category.category_name}}</a>
                            </router-link>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- End Categories -->
        </div>
    </div>
    <!-- End Content -->
    <Footer></Footer>
</div>
</template>

<script>
import Navbar from '../components/navbar.vue'
import Footer from '../components/footer.vue'
export default {
    name: 'Home',
    components: {
        Navbar,
        Footer
    },
    data(){
        return{
            categories:[],
        }
    },
    mounted() {
        this.getCategories();
    },
    methods: {
        getCategories(){
            axios.get('/api/categories')
            .then(res => this.categories = res.data);    
        }
    },
    computed:{
        isOne: function () {
            return this.categories.filter(i => i.id == 1)
        },
           isTwo: function () {
            return this.categories.filter(i => i.id == 2)
        },
           isThree: function () {
            return this.categories.filter(i => i.id == 3)
        },
           isFour: function () {
            return this.categories.filter(i => i.id == 4)
        },
           isFive: function () {
            return this.categories.filter(i => i.id == 5)
        }
        
    }
}
</script>

<style lang="scss" scoped>
    @import '../../sass/variables';
// Header
header {
    padding-top: 40px;
    background-color: $main-color;
}
header .title {
    padding: 100px 0 40px 0;
}

header .title h1,
header .title h3 {
    color: $white;
}

header .title h3 {
    margin-top: 45px;
}

header .pattern-head img {
    position: relative;
    top: 2px;
    width: 100%;
  
}

/* End of Header */

/* Content */
.content h2 {
    padding: 32px 0 75px 0;
}

.content .categories a {
    font-size: 1.3rem;
    margin: 25px 0;
}

.content .categories img {
    width: 90%;
}

/* Category 1 */
.content .categories .category_1 div:nth-child(2) img {
    margin-top: 151px;
}

/* End Category 1 */

/* Category 2 */
.content .categories .category_2 {
    margin-top: 33px;
}

.content .categories .category_2 * {
    margin-left: 20px;
}

.content .categories .category_2 div:nth-child(2) img {
    margin-top: 230px;
}

/* End Category 2 */
.content .category_2{
    position: relative;
    z-index: 99999;
}
/* Category 3 */
.content .categories .category_3 {
    position: relative;
    bottom: 100px;
}


/* End Category 3 */

/* End of Content */

/* Responsive */
@media only screen and (max-width: 1024px) {
    .cont {
        margin-left: 75px;
        margin-right: 75px;
    }

}

@media only screen and (max-width: 991px) {

    /* Category 1 */
    .content .categories .category_1 div:nth-child(2) img {
        margin-top: 33px;
    }

    /* End Category 1 */

    /* Category 2 */
    .content .categories .category_2 {
        margin-top: 33px;
    }

    .content .categories .category_2 * {
        margin-left: -7.5px;
    }

    .content .categories .category_2 div:nth-child(2) img {
        margin-top: 33px;
    }

    /* End Category 2 */

    /* Category 3 */
    .content .categories .category_3 {
        position: unset;
        margin-top: 33px;
        margin-left: -7.5px;
    }

    footer h4 {
        margin-top: 40px;
    }

    footer .information * {
        padding-left: unset;
    }

    footer .information h4 {
        padding-left: unset;
    }

}

@media only screen and (max-width:768px) {
    .cont {
        margin-left: 50px;
        margin-right: 50px;
    }

    header .title h3 {
        margin: 45px auto 0 auto;
        width: 80%;
    }

}

@media only screen and (max-width:587px) {
    header .title h3 {
        width: 90%;
    }
}

@media only screen and (max-width:425px) {

    *,
    body {
        font-size: 16px;
    }

    .cont {
        margin-left: 30px;
        margin-right: 30px;
    }

    header .title {
        padding: 60px 0 40px 0;
    }

    header .title h3 {
        margin: 45px auto 0 auto;
        width: 100%;
    }

    .content .categories .category_2 * {
        margin-left: -3.25px;
    }

    .content .categories .category_3 {
        margin-left: 7.5px;
    }

    footer .social {
        margin-bottom: 30px;
    }

    footer .subcription .input-subcription {
        flex-direction: column;
        align-items: flex-start;
    }

    footer .subcription .input-subcription button {
        margin-top: 15px;
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

    .logo i {
        font-size: 20px;
    }

    footer .subcription .input-subcription input {
        width: 200px;
    }

    footer .social img {
        width: 25px;
        height: 25px;
    }

    footer .social img:nth-child(2) {
        margin: 0 20px;
    }
}
</style>
