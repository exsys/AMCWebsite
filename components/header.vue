<template>
    <div class="header-container">
        <header class="container p-4">
            <div class="row border-bottom">
                <div class="d-flex justify-content-between align-items-center header-top">
                    <img class="mobile-sm" src="/img/amc-logo.png" alt="">
                    <div class="dropdown">
                        <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" id="dropdownMenuButton1"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            {{ $t('language') }}
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item" href="#" @click="$i18n.locale = 'en'; setLocale('en')">English</a></li>
                            <!-- <li><a class="dropdown-item" href="#" @click="$i18n.locale = 'zh'; setLocale('zh')">繁体中文</a></li> -->
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <nav class="navbar navbar-expand-lg col">
                    <div class="container-fluid">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <NuxtLink class="nav-link" to="/" :class="{ active: currRoute === 'index' }">{{ $t('header.home') }}
                                    </NuxtLink>
                                </li>
                                <li class="nav-item">
                                    <NuxtLink class="nav-link" to="/service" :class="{ active: currRoute === 'service' }">
                                        {{ $t('header.services') }}</NuxtLink>
                                </li>
                                <li class="nav-item">
                                    <NuxtLink class="nav-link" to="/about" :class="{ active: currRoute === 'about' }">{{ $t('header.aboutUs') }}</NuxtLink>
                                </li>
                                <li class="nav-item">
                                    <NuxtLink class="nav-link" to="/contact" :class="{ active: currRoute === 'contact' }">
                                        {{ $t('header.contactUs') }}</NuxtLink>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="contact-buttons col">
                    <a class="contact-btn me-3 d-flex d-sm-none" href="tel:+0123456789">
                        <div class="contact-icon">
                            <img src="/svg/phone-icon.svg" alt="">
                        </div>
                    </a>
                    <div class="contact-btn me-5 d-none d-sm-flex cursor-text">
                        <div class="contact-icon">
                            <img src="/svg/phone-icon.svg" alt="">
                        </div>
                        <div class="contact-text">
                            <div class="upper-text">{{ $t('header.callUsAt') }}:</div>
                            <div class="lower-text">+0123456789</div>
                        </div>
                    </div>
                    <a class="contact-btn" href="mailto:placeholder@gmail.com">
                        <div class="contact-icon">
                            <img src="/svg/mail-icon.svg" alt="">
                        </div>
                        <div class="contact-text d-none d-sm-block">
                            <div class="upper-text">{{ $t('header.emailUs') }}:</div>
                            <div class="lower-text">placeholder@gmail.com</div>
                        </div>
                    </a>
                </div>
            </div>
        </header>
    </div>
</template>

<script>
import { useI18n } from 'vue-i18n'

export default {
    data() {
        return {
            currRoute: ""
        }
    },
    mounted() {
        this.currRoute = this.$route.name;

        const { locale } = useI18n();
        const lang = localStorage.getItem('lang')
        if (lang)
            locale.value = lang
    },
    methods: {
        setLocale(lang) {
            localStorage.setItem('lang', lang);
        }
    }
}
</script>


<style scoped lang="scss">
.header-container {
    position: fixed;
    width: 100%;
    z-index: 1;
    background-color: rgba(0, 0, 0, 0.25);

    .contact-buttons {
        display: flex;
        justify-content: flex-end;
        padding-top: 1vh;

        .contact-btn {
            display: flex;
            cursor: pointer;
            color: #CCAA60;
            height: fit-content;

            .contact-icon {
                margin-right: 1vh;
            }
        }
    }
}

.mobile-sm {
    transform: scale(0.7);
    margin-left: -4vh;
}

a {
    text-decoration: none;
}

@media (min-width: 576px) {
    .mobile-sm {
        transform: unset;
        margin-left: 0;
    }

    .header-container {
        .contact-buttons {
            .cursor-text {
                cursor: text;
            }
        }
    }
}

@media (min-width: 769px) {
    .header-container {
        .contact-buttons {
            align-items: center;
        }
    }

    .navbar-collapse {
        background-color: transparent !important;
    }
}

/** SASS Variables */
.dropdown-menu {
    transform: translate(0, 46px) !important;
    width: 100%;
}

.dropdown-item {
    text-align: center;
    border: 1px solid transparent;

    &:hover {
        border: 1px solid #D1B06B;
    }
}

.btn-secondary {
    background-color: #1F2732;

    &:hover {
        background-color: #1F2732;
    }
}

.nav-link {
    font-size: 17px;
    color: white !important;
    margin-right: 3vh;
    padding: 2vh;
}

.active {
    border-bottom: 2px solid #D1B06B;
}

.container-fluid {
    padding: 0;
}
</style>