<template>
<div>
        <!-- Footer -->
    <footer>
        <div class="cont">
            <div class="row">
                <div class="col-lg-3">
                    <div class="logo">
                        <img src="/images/logo_ijo.svg" alt="Logo">
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="information">
                        <h4>Information</h4>
                        <ul>
                            <li>
                                <p>About</p>
                            </li>
                            <li>
                                <p>Shipping</p>
                            </li>
                            <li>
                                <p>Privacy & Terms</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="subcription">
                        <h4>Subscribe</h4>
                        <p>Join Our News Letter</p>
                        <div class="input-subcription">
                            <input type="text" placeholder="Your Email Address">
                            <button class="main-btn">Subscribe</button>
                        </div>
                        <div class="social">
                            <img src="/images/instagram.svg" alt="Instagram">
                            <img src="/images/dribble.svg" alt="Dribble">
                            <img src="/images/twitter.svg" alt="Twitter">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pattern-foot">
            <img src="/images/pattern_foot_fix.svg" alt="Pattern">
        </div>
        <div class="copyright">
            <small>Omnicreativora Store® All Rights Reserved 2018 - 2019</small>
        </div>
    </footer>
    <!-- End of Footer -->
    </div>
</template>

<script>
export default {
    name: 'footer'
}
</script>

<style lang="scss">
    @import '../../sass/variables';
/* Footer */

footer {
    background-color: $main-color;
    padding-top: 80px;
    margin-top: 120px;
}

footer h4,
footer p {
    color: var(--white);
}

footer h4 {
    text-transform: uppercase;
}

footer p {
    margin-top: 25px;
}

footer .information * {
    padding-left: 10px;
}

footer .information h4 {
    padding-left: 30px;
}

footer .information ul {
    list-style-type: none;
}

footer .subcription .input-subcription {
    display: flex;
    flex-direction: row;
    align-items: center;
}

footer .subcription .input-subcription input {
    padding: 15px 20px 15px 15px;
    width: 267px;
    margin-right: 10px;
    border-radius: 6px;
    border: none;
    outline: none;
    color: #979DB1;
}

footer .subcription .input-subcription input::placeholder {
    color: #979DB1;
}

footer .social {
    margin-top: 35px;
}

footer .social img:nth-child(2) {
    margin: 0 35px;
}

footer .pattern-foot img {
    display: block;
    width: 100%;
}

footer .copyright {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    padding: 5px 0;
}

footer .copyright small {
    color: $white;
    text-align: center;
    margin: 0 auto;
}

/* End Of Footer */
@media only screen and (max-width: 1024px) {
   footer .cont {
        margin-left: 75px;
        margin-right: 75px;
    }

}
@media only screen and (max-width: 991px) {
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
   footer .cont {
        margin-left: 50px;
        margin-right: 50px;
    }
}
@media only screen and (max-width:425px) {
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

    footer *{
        font-size: 14px;
    }
}
@media only screen and (max-width:320px) {

    footer * {
        font-size: 12px;
    }

    footer .cont {
        margin-left: 20px;
        margin-right: 20px;
    }
}
@media only screen and (max-width:287px) {
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
    footer  .cont {
        margin-left: 15px;
        margin-right: 15px;
    }
}
</style>
