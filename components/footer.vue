<template>
    <div class="footer-container">
        <div class="footer-top">
            <div>
                <img src="/img/footer/cross-left-icon.png" alt="">
            </div>
            <div class="mx-5">
                <img src="/img/amc-logo.png" alt="">
            </div>
            <div>
                <img src="/img/footer/cross-right-icon.png" alt="">
            </div>
        </div>
        <div class="footer-bottom">
            <div class="footer-navbar footer-list">
                <h3>{{ $t('footer.quickLink') }}</h3>
                <ul>
                    <li>
                        <NuxtLink class="nav-link" to="/">{{ $t('footer.home') }}</NuxtLink>
                    </li>
                    <li>
                        <NuxtLink class="nav-link" to="/service">{{ $t('footer.services') }}</NuxtLink>
                    </li>
                    <li>
                        <NuxtLink class="nav-link" to="/about">{{ $t('footer.aboutUs') }}</NuxtLink>
                    </li>
                    <li>
                        <NuxtLink class="nav-link" to="/contact">{{ $t('footer.contactUs') }}</NuxtLink>
                    </li>
                </ul>
            </div>
            <div class="footer-contact footer-list">
                <h3>{{ $t('footer.contactUsTitle') }}</h3>
                <ul>
                    <li class="d-block d-sm-none">
                        <a href="tel:+0123456789">{{ $t('footer.phone') }}: +0123456789</a>
                    </li>
                    <li class=" ">{{ $t('footer.phone') }}: +0123456789</li>
                    <li>
                        <a href="mailto:placeholder@gmail.com">{{ $t('footer.email') }}: placeholder@gmail.com</a>
                    </li>
                    <li class="d-block d-sm-none">
                        <a href="tel:+0123456789">{{ $t('footer.whatsapp') }}: +0123456789</a>
                    </li>
                    <li class="d-none d-sm-block">{{ $t('footer.whatsapp') }}: +0123456789</li>
                    <li>{{ $t('footer.lineInquiry') }}: placeholder</li>
                </ul>
            </div>
            <div class="footer-socials socials-list">
                <img src="/svg/wechat.svg" alt="">
                <img src="/svg/line.svg" alt="">
                <img src="/svg/whatsapp.svg" alt="">
                <img src="/svg/facebook.svg" alt="">
                <img src="/svg/instagram.svg" alt="">
            </div>
        </div>
    </div>
</template>

<script setup>

</script>

<style scoped lang="scss">
.footer-container {
    background-color: #1F2732;
    padding: 7vh 4vh;
    width: 100%;
    overflow: hidden;

    .footer-top {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 5vh;
    }

    .footer-bottom {
        margin: 0 auto;
        display: flex;
        justify-content: space-between;
        flex-direction: column;

        .footer-list {
            display: flex;
            flex-direction: column;
            margin-bottom: 5vh;

            h3 {
                font-family: "Cormorant Garamond", serif;
                font-size: 30px;
                font-weight: 700;
                border-top: 1px solid #3A4553;
                border-bottom: 1px solid #3A4553;
                padding: 2vh 0;
            }

            ul {
                list-style: none;
                margin: 0;
                padding: 0;

                li {
                    font-family: "Outfit", sans-serif;
                    font-size: 20px;
                    margin: 2vh 0;

                    a {
                        color: white;
                        text-decoration: none;
                    }
                }
            }
        }

        .socials-list {
            display: flex;
            align-items: flex-end;
        }
    }
}

@media (min-width: 576px) {
    .footer-container {
        .footer-bottom {
            width: 80%;
            flex-direction: row;
            flex-wrap: wrap;

            .footer-list {
                width: 42%;
            }
        }
    }
}

@media (min-width: 1200px) {
    .footer-container {
        .footer-bottom {
            width: 84%;
            flex-direction: row;
            flex-wrap: wrap;

            .footer-list {
                width: 29%;
                margin-right: 3vh;
                margin-bottom: 0;
            }
        }
    }
}

@media (min-width: 1441px) {
    .footer-container {
        .footer-bottom {
            width: 66%;

            .footer-list {
                width: 29%;
            }
        }
    }
}
</style>