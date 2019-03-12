<template>
    <div>
        <div class="row">
            <div class="col-lg-5">
                <product />
            </div>
            <div class="col-lg-7">
                <div class="row">
                 <div class="grap">
                   <div class="title">
                     <div class="visit">
                         <h2>Visitors</h2>
                         <div class="dropdown">
                             <button class="btn" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                 aria-expanded="false">
                                 All
                             </button>
                             <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                 <a class="dropdown-item" href="#">Action</a>
                                 <a class="dropdown-item" href="#">Another action</a>
                                 <a class="dropdown-item" href="#">Something else here</a>
                             </div>
                         </div>
                     </div>
                   </div>
                 </div>
                </div>
                <div class="row">

                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import product from './product.vue'
    export default {
        name: 'homeDashboard',
        components: {
            product
        }
    }

</script>

<style lang="scss" scoped>
 @import '../../sass/variables';

</style>
