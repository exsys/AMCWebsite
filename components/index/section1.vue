<template>
    <div class="section1-container">
        <div class="bg-section1">
            <div class="main-content d-flex flex-column align-items-center justify-content-center">
                <div class="main-text">
                    <h1>{{ $t('index.section1.title') }}</h1>
                    <div class="info-text">
                        {{ $t('index.section1.info') }}
                    </div>
                </div>
                <div class="explore-btn">
                    <defaultButton :text="$t('index.section1.explore')" :onClick="onClick" />
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import defaultButton from '../widgets/defaultButton.vue';

export default {
    components: {
        defaultButton
    },
    methods: {
        onClick() {
            window.location.href = "/service";
        }
    }
}
</script>

<style scoped lang="scss">
.section1-container {
    .bg-section1 {
        height: 100vh;
        width: 100vw;
        background-image:
            linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
            url("/img/index/bg-section1.png");

        .main-content {
            height: 100%;
            width: 90%;
            margin: 0 auto;
            padding-top: 15vh;

            .main-text {
                text-align: center;
                margin-bottom: 7vh;

                h1 {
                    color: white;
                    font-family: "Cormorant Garamond", serif;
                    font-weight: 600;
                    font-size: 65px;
                    letter-spacing: 1px;
                    margin-bottom: 3vh;
                }

                .info-text {
                    font-family: "Outfit", serif;
                    font-size: 22px;
                    color: #CCAA60;
                }
            }

            .explore-btn {
                width: 285px;
            }
        }
    }
}

@media (min-width: 576px) {
    .section1-container {
        .bg-section1 {

            .main-content {
                width: 80%;
            }
        }
    }
}

@media (min-width: 769px) {
    .section1-container {
        .bg-section1 {
            .main-content {
                width: 75%;

                .main-text {
                    text-align: left;

                    .info-text {
                        width: 60%;
                    }
                }
            }
        }
    }
}

@media (min-width: 1200px) {
    .section1-container {
        .bg-section1 {
            .main-content {
                width: 55%;

                .main-text {
                    text-align: left;

                    .info-text {
                        width: 55%;
                    }
                }
            }
        }
    }
}

@media (min-width: 1441px) {
    .section1-container {
        .bg-section1 {
            .main-content {
                width: 40%;

                .main-text {
                    .info-text {
                        width: 60%;
                    }
                }
            }
        }
    }
}
</style>