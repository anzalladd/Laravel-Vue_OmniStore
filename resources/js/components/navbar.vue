<template>
<div>
             <!-- NavBar -->
        <div v-if="$router.history.current['path'] == '/'">
            <nav>
                <div class="logo">
                    <router-link to="/">
                    <img src="/images/logo_ijo.svg" alt="Logo">  
                    </router-link>
                    <i class="fas fa-bars" id="hamburger" @click="show"></i>
                </div>
                    <div class="nav-comp" :class="{isActive : hide}">
                        <span>
                            <i class="fas fa-search"></i>
                            <input type="text" placeholder="Search">
                        </span>
                        <button class="main-btn">Cart(0)</button>
                    </div>
            </nav>
            </div>
            <div v-else>
                <header class="head_putih">
             <nav class="mt-5">
                <div class="logo">
                      <router-link to="/">
                    <img src="/images/logo_biru.svg" alt="Logo">  
                    </router-link> 
                    <i class="fas fa-bars biru" id="hamburger" @click="show"></i>
                </div>
                    <div class="nav-comp" :class="{isActive : hide}">
                        <span>
                            <i class="fas fa-search biru"></i>
                            <input type="text" placeholder="Search" class="biru">
                        </span>
                        <button class="main-btn biru_bg">Cart(0)</button>
                    </div>
            </nav>
            </header>
            </div>
            <!-- End NavBar -->
</div>
</template>

<script>
export default {
    name : 'navbar',
    data(){
        return{
            hide: true
        }
    },
    methods:{
        show: function(){
            this.hide = !this.hide
        }
    }
}
</script>

<style lang="scss">
    /* Nav */
@import '../../sass/variables';
.head_putih{
    background-color: white !important;
}
nav {
    display: flex !important;
    display: -webkit-box !important;
    display: -moz-box !important;
    display: -ms-flexbox !important;
    display: -webkit-flex !important;
    flex-direction: row ;
    align-items: center;
}
header a{
    display: inline !important;
}
nav .logo {
    -webkit-box-flex: 75%;
    -moz-box-flex: 75%;
    -webkit-flex: 75%;
    -ms-flex: 75%;
    flex: 75% !important;
}

nav .nav-comp {
    display: flex;
    justify-content: flex-end;
    -webkit-box-flex: 25%;
    -moz-box-flex: 25%;
    -webkit-flex: 25%;
    -ms-flex: 25%;
    flex: 25%;
}

nav .nav-comp i {
    color: $white;
    padding: 15px;
}

nav .nav-comp input {
    background: none;
    outline: none;
    border: none;
    color: $white;
    padding-right: 1rem;
    width: 150px;
}
.biru{
    color: $main-color !important;
}
.biru::placeholder{
    color: $main-color !important;
}
.biru_bg{
    background-color: $main-color !important;
}
nav .nav-comp span {
    display: flex;
    flex-direction: row;
}

nav .nav-comp input::placeholder {
    color: $white;
}

/* End of Nav */
@media only screen and (max-width:587px) {
    header .title h3 {
        width: 90%;
    }

    .logo i {
        display: block;
    }

    nav {
        align-items: flex-start;
        flex-direction: column;
    }

    nav .logo {
        width: 100%;
    }

    nav .logo i {
        float: right;
        display: block;
    }

    .isActive {
        display: none !important;
    }

    nav .nav-comp {
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        -webkit-box-flex: 100%;
        -moz-box-flex: 100%;
        -webkit-flex: 100%;
        -ms-flex: 100%;
        flex: 100%;
    }

    nav .nav-comp span {
        display: flex;
        flex-direction: row;
        padding: 30px 0;
    }

}


@media only screen and (max-width:587px) {
    .logo i {
        display: block;
    }

    nav {
        align-items: flex-start;
        flex-direction: column;
    }

    nav .logo {
        width: 100%;
    }

    nav .logo i {
        float: right;
        display: block;
    }
    nav .nav-comp {
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        -webkit-box-flex: 100%;
        -moz-box-flex: 100%;
        -webkit-flex: 100%;
        -ms-flex: 100%;
        flex: 100%;
    }

    nav .nav-comp span {
        display: flex;
        flex-direction: row;
        padding: 30px 0;
    }

}

@media only screen and (max-width:425px) {
    nav {
        align-items: flex-start;
        flex-direction: column;
    }

    nav .logo {
        width: 100%;
    }

    nav .logo i {
        float: right;
        display: block;
    }

    nav .nav-comp span {
        display: flex;
        flex-direction: row;
        padding: 30px 0;
    }
}
</style>
