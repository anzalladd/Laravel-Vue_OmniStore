<template>
    <div class="product-isi">
        <div class="title">
            <h1>Item</h1>
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
        <div class="list">
            <div class="list-title">
                <h3>Product</h3>
                <h3>Size</h3>
                <h3>Total</h3>
            </div>
            <div class="list-item">
                <span>
                <img src="/images/baju_1.png" alt="baju_1">
                </span>
                <p>M</p>
                <p>18</p>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'product'
    }

</script>

<style lang="scss" scoped>
    @import '../../sass/variables';

    .product-isi {
        width: 100%;
        background-color: white;
        min-height: 85vh;

        .title {
            @extend .flex-box;
            align-items: center;
            justify-content: space-between;
            padding: 10px 23px 0 23px;

            button {
                color: $white;
                background-color: $main-color;
                width: 100px;
            }
        }

        .list{
            margin: 40px 15px 0 23px;

            .list-title{
                @extend .flex-box;
                h3:nth-child(1){
                    flex: 50%;
                }
                h3:nth-child(2){
                    flex: 25%;
                }
                h3:nth-child(3){
                    flex: 25%;
                }
            }
            
            .list-item{
                @extend .flex-box;
                align-items: center;
                margin-top: 35px;
                span{
                    flex: 50%;
                      img{
                   width: 40%;
                }
                }
                p:nth-child(2){
                    flex: 25%;
                }
                p:nth-child(3){
                    flex: 25%;
                }

            }
        }

    }

</style>
