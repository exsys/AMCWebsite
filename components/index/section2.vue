<template>
    <div class="section2-container">
        <div class="bg-section2">
            <div class="container section2-main-content">
                <div class="row">
                    <h2>{{ $t('index.section2.title') }}</h2>
                </div>
                <div class="row">
                    <div class="icon-container">
                        <img src="/img/cross-icon.png" alt="">
                    </div>
                </div>
                <div class="row">
                    <div class="info-text">
                        {{ $t('index.section2.info1') }} <br>
                        {{ $t('index.section2.info2') }}
                    </div>
                </div>
                <div class="row justify-content-center w-100 images">
                    <div class="img-container-sm bg1"></div>
                    <div class="img-container-sm bg2"></div>
                    <div class="img-container-sm bg3"></div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>

</script>

<style scoped lang="scss">
.section2-container {
    .bg-section2 {
        height: 100%;
        width: 100vw;
        background-color: #1F2732;
        font-family: "Cormorant Garamond", serif;

        .section2-main-content {
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;

            h2 {
                font-size: 40px;
                font-weight: 700;
                margin-bottom: 0;
                margin-top: 5vh;
            }

            .icon-container {
                margin: 3vh 0;
            }

            .info-text {
                font-size: 20px;
                width: 96%;
                margin: 0 auto;
                text-align: center;
                margin-bottom: 8vh;
            }

            .img-container-sm {
                width: 90%;
                max-width: 480px;
                height: 190px;
                margin: 2vh 0;
                background-size: cover;
                background-position: center;

                &.bg1 {
                    background-image: url("/img/index/bg1-section2.jpg");
                }

                &.bg2 {
                    background-image: url("/img/index/bg2-section2.jpg");
                }

                &.bg3 {
                    background-image: url("/img/index/bg3-section2.png");
                }
            }
        }
    }
}

@media (min-width: 576px) {
    .section2-container {
        .bg-section2 {
            .section2-main-content {
                .info-text {
                    font-size: 25px;
                    width: 70%;
                }

                .images {
                    flex-wrap: wrap;

                    .img-container-sm {
                        width: 40%;
                        margin: 2vh;

                        &.bg2 {
                            background-size: 140% 140%;
                            background-position: 70% 100%;
                        }
                    }
                }
            }
        }
    }
}

@media (min-width: 769px) {
    .section2-container {
        .bg-section2 {
            height: 100vh;

            .section2-main-content {
                h2 {
                    margin-top: 0;
                }

                .info-text {
                    width: 70%;
                }

                .images {
                    .img-container-sm {
                        width: 28%;
                        height: 200px;
                        margin: 0 2vh;
                    }
                }
            }
        }
    }
}

@media (min-width: 1200px) {
    .section2-container {
        .bg-section2 {
            height: 100vh;

            .section2-main-content {

                .info-text {
                    width: 50%;
                }

                .images {
                    flex-wrap: nowrap;

                    .img-container-sm {
                        width: 25%;
                        height: 220px;
                    }
                }
            }
        }
    }
}
</style>