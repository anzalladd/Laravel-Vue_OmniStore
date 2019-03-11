<template>
    <div>
        <div class="cont">
            <Navbar></Navbar>
        </div>
               <div class="cont">
                   <div class="content">
            <div class="navigasi">
                <i class="fas fa-angle-left disable"></i>
                <a href="#" class="disable">Previous</a>
                <span>/</span>
                <a href="#">Next</a>
                <i class="fas fa-angle-right"></i>
            </div>
            <div class="product">
                <div class="row">
                    <div class="picture col-lg-6">
                        <div class="big-picture">
                                      <div>
            </div>
                            <img :src="detail.image" alt="Baju 1">
                        </div>
                        <div class="small-picture">
                            <img :src="detail.image_1" alt="kecil 1">
                            <img :src="detail.image_2" alt="kecil 2">
                            <img :src="detail.image_3" alt="kecil 3">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="detail-product">
                            <h2>{{detail.product_name}}</h2>
                            <h3>Rp {{detail.price  | formatNumber}}</h3>
                            <div class="inputan">
                                <div class="choice">
                                    <input type="number">
                                    <select class="form-control" id="sel1">
                                        <option>S</option>
                                        <option>M</option>
                                        <option>L</option>
                                        <option>XL</option>
                                    </select>
                                </div>
                                <div class="add-cart">
                                    <button class="main-btn">Add To Cart</button>
                                </div>
                            </div>
                            <p>{{detail.detail}}</p>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <div class="related-product">
                <carousel class="carousel" :scrollPerPage="true" :perPageCustom="[[480, 2], [768, 3]]">
                  <slide  v-for="item in relate_product" :key="item.id">
                      <div>
                     <img :src="item.image" alt="">
                      <p>{{item.product_name}}</p>
                      </div>
                  </slide>
            </carousel>
            </div>
    </div>
        <Footer></Footer>
    </div>
</template>

<script>
   import Navbar from '../components/navbar.vue'
   import Footer from '../components/footer.vue'
   import numeral from 'numeral'
   import {Carousel, Slide } from 'vue-carousel'
export default {
        name: 'detail',
        components: {
            Navbar,
            Footer,
            Carousel,
            Slide
        },
        data(){
            return{
                id_: this.$route.params.id,
                detail: [],
                cat_id: this.$route.params.category_id,
                relate_product:[],
            }
        },
        mounted(){
            this.getDetail();
            this.getRelated();
        },
        methods:{
            getDetail() {
                axios.get('/api/products/' + this.id_)
                    .then(res => this.detail = res.data);
            },
            getRelated(){
                axios.get('/api/categories/' + this.cat_id)
                       .then(res => this.relate_product = res.data.product.filter(function(item){
                           return item.id != this.id_ 
                       }.bind(this)));
            },
        },
        filters:{
            formatNumber(value){
                return numeral(value).format("0,0");
            }
        }
}
</script>

<style lang="scss" scoped>
@import '../../sass/variables';
    .content .navigasi {
    display: flex;
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    flex-direction: row;
    align-items: center;
    width: 162px;
    justify-content: space-between;
    margin: 100px auto;
}

.content .navigasi .disable {
    color: $disable;
}

.content .product .big-picture img {
    width: 80%;
    height: 80%;
}

.content .product .small-picture img {
    width: 30%;
    height: 30%;
}

.content .product .small-picture {
    display: flex;
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    justify-content: space-between;
    width: 80%;
    margin-top: 20px;
}

.content .detail-product h2 {
    color: $main-color;
}

.content .detail-product h3 {
    color: $danger;
    padding: 15px 0 40px 0;
}

.content .detail-product .inputan {
    display: flex;
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    flex-direction: row;
    align-items: center;
}

.content .detail-product .inputan .choice {
    display: flex;
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    flex-direction: row;
}

.content .detail-product .inputan .choice input {
    width: 55px;
    padding: 5px;
    border: 1px solid $purple;
    border-radius: 3px;
}

.content .detail-product .inputan .choice select {
    width: 68px;
    border: 1px solid $purple;
    border-radius: 3px;
    margin: 0 20px;
}

.content .detail-product .inputan .add-cart button {
    background-color: $main-color;
}

.content .detail-product p {
    line-height: 200%;
    margin-top: 40px;
}
.related-product .carousel{
    margin-top: 150px;
}
.related-product .carousel img{
    width: 80%;
}
.related-product .carousel p{
    margin-top: 30px;
}
@media only screen and (max-width: 1024px) {
    .cont {
        margin-left: 75px;
        margin-right: 75px;
    }

}

@media only screen and (max-width: 991px) {

    .content .detail-product h2 {
        margin-top: 30px;
    }

    .content .product .big-picture {
        display: flex;
        display: -webkit-box;
        display: -moz-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        justify-content: center;
    }
    .content .product .small-picture {
        margin: 20px auto 0 auto;
    }
}

@media only screen and (max-width:768px) {
    .cont {
        margin-left: 50px;
        margin-right: 50px;
    }
}

@media only screen and (max-width:587px) {
    .logo i {
        display: block;
    }

    header nav {
        align-items: flex-start;
        flex-direction: column;
    }

    header nav .logo {
        width: 100%;
    }

    header nav .logo i {
        float: right;
        display: block;
    }

    #togling {
        display: none;
    }

    header nav .nav-comp {
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        -webkit-box-flex: 100%;
        -moz-box-flex: 100%;
        -webkit-flex: 100%;
        -ms-flex: 100%;
        flex: 100%;
    }

    header nav .nav-comp span {
        display: flex;
        flex-direction: row;
        padding: 30px 0;
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

    header nav {
        align-items: flex-start;
        flex-direction: column;
    }

    header nav .logo {
        width: 100%;
    }

    header nav .logo i {
        float: right;
        display: block;
    }

    header nav .nav-comp span {
        display: flex;
        flex-direction: row;
        padding: 30px 0;
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
}
</style>