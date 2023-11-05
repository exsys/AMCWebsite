<template>
    <div class="section3-container">
        <div class="bg-section3">
            <div class="container section3-main-content d-flex h-100 justify-content-center flex-column">
                <div class="row mb-2">
                    <h2>{{ $t('index.section3.title') }}</h2>
                </div>
                <div class="row">
                    <div class="icon-container mb-3">
                        <img src="/img/cross-lg-icon.png" alt="">
                    </div>
                </div>
                <div class="row info-cards">
                    <div class="service-info-card">
                        <h3 class="info-card-title">{{ $t('index.section3.infoCardTitle1') }}</h3>
                        <div class="info-card-text">{{ $t('index.section3.infoCardText1') }}</div>
                    </div>
                    <div class="service-info-card">
                        <h3 class="info-card-title">{{ $t('index.section3.infoCardTitle2') }}</h3>
                        <div class="info-card-text">{{ $t('index.section3.infoCardText2') }}</div>
                    </div>
                    <div class="service-info-card">
                        <h3 class="info-card-title">{{ $t('index.section3.infoCardTitle3') }}</h3>
                        <div class="info-card-text">{{ $t('index.section3.infoCardText3') }}</div>
                    </div>
                    <div class="service-info-card">
                        <h3 class="info-card-title">{{ $t('index.section3.infoCardTitle4') }}</h3>
                        <div class="info-card-text">{{ $t('index.section3.infoCardText4') }}</div>
                    </div>
                    <div class="service-info-card">
                        <h3 class="info-card-title">{{ $t('index.section3.infoCardTitle5') }}</h3>
                        <div class="info-card-text">{{ $t('index.section3.infoCardText5') }}</div>
                    </div>
                    <div class="service-info-card">
                        <h3 class="info-card-title">{{ $t('index.section3.infoCardTitle6') }}</h3>
                        <div class="info-card-text">{{ $t('index.section3.infoCardText6') }}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>

</script>

<style scoped lang="scss">
.section3-container {
    .bg-section3 {
        height: 100%;
        width: 100vw;
        background-color: #161D27;
        font-family: "Cormorant Garamond", serif;

        .section3-main-content {

            h2 {
                font-size: 40px;
                font-weight: 700;
            }

            .info-cards {
                flex-direction: row;
                justify-content: center;

                .service-info-card {
                    background-color: #1F2732;
                    margin: 1.7vh;
                    width: 100%;
                    max-width: 370px;
                    padding: 4vh 3vh;

                    .info-card-title {
                        font-size: 30px;
                        line-height: 34px;
                        font-weight: 700;
                        border-bottom: 1px solid #3A4553;
                        padding-bottom: 2vh;
                    }

                    .info-card-text {
                        font-family: "Outfit", sans-serif;
                        font-size: 16px;
                        margin: 3vh 0;
                        line-height: 23px;
                        color: #D7D7D7;
                    }
                }
            }
        }
    }
}

@media (min-width: 769px) {
    .section3-container {
        .bg-section3 {
            padding: 8vh 0;
        }
    }
}

@media (min-width: 1200px) {
    .section3-container {
        .bg-section3 {
            height: 100vh;

            .section3-main-content {
                .info-cards {
                    justify-content: center;
                }
            }
        }
    }
}
</style>