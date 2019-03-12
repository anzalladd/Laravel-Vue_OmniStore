<template>
    <div>
        <div class="row">
            <div class="col-lg-5">
                <product />
            </div>
            <div class="col-lg-7">

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
