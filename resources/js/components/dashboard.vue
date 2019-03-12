<template>
    <div class="dashboard">
        <nav>
            <div class="side">
                <div class="hamburger">
                    <i class="fas fa-bars"></i>
                </div>
                <div class="side_nav">
                    <div class="item active">
                        <router-link to="/dashboard/wkwkkw">
                            <img src="/images/graph.svg" alt="graph">
                        </router-link>
                    </div>
                    <div class="item">
                        <img src="/images/upload.svg" alt="upload">
                    </div>
                    <div class="item">
                        <img src="/images/edit.svg" alt="edit">
                    </div>
                </div>
            </div>
            <div class="top-wrap">
                <div class="top">
                    <img src="/images/logo_dashboard_ijo.svg" alt="logo">
                </div>
                <div>
                    <div class="main">
                        <div class="content">
                            <router-view></router-view>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</template>

<script>
    export default {
        name: 'nav_dashboard'
    }

</script>

<style lang="scss" scoped>
    @import '../../sass/variables';

    nav {
        display: flex;
        position: fixed;
        flex-direction: row;
        width: 100%;

        .top-wrap {
            flex: 100%;
        }

        .top {
            position: relative;
            height: 60px;
            width: 100%;
            flex-shrink: 0;
            background: $main-color;

            img {
                position: absolute;
                top: 50%;
                left: 50%;
                margin-top: -15px;
                margin-left: -60px;
            }
        }

        .side {
            display: flex;
            flex-direction: column;
            align-items: center;
            flex-shrink: 0;
            flex: 83px;
            width: 100%;
            background-color: $main-color;
            height: 100vh;

            .hamburger {
                display: block;
                width: 100%;
                height: 60px;
                background: rgba(255, 255, 255, 0.1);

                i {
                    display: block;
                    color: $secondary-color;
                    text-align: center;
                    font-size: 1.5rem;
                    line-height: 60px;
                    cursor: pointer;
                }
            }

            .side_nav {
                display: flex;
                flex-direction: column;
                margin-top: 40px;

                .item {
                    display: block;
                    width: 100%;
                    padding: 20px 30px;
                    margin: 20px 0;

                    img {
                        cursor: pointer;
                    }
                }

                .active {
                    border-right: 4px solid $secondary-color;
                }

            }
        }
    }

    .main {
        width: 100%;
        min-height: 100vh;
        background-color: #F5F8FA;

        .content {
            padding: 30px 110px 0 110px;
        }
    }

</style>
