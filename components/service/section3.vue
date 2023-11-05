<template>
    <div class="bg-section3 container">
        <div class="section3-content">
            <div class="section3-left">
                <h2>{{ $t('service.section3.title') }}</h2>
                <img class="mt-2 mb-4" src="/img/cross-lg-icon.png" alt="">
                <div>{{ $t('service.section3.info') }}</div>
            </div>
            <div class="section3-right">
                <div class="info-card">
                    <div class="info-card-icon">
                        <img src="/img/service/scale-icon.png" alt="">
                    </div>
                    <div class="info-card-title">{{ $t('service.section3.infoCardTitle1') }}</div>
                    <div class="info-card-text">{{ $t('service.section3.infoCardText1') }}</div>
                </div>
                <div class="info-card">
                    <div class="info-card-icon">
                        <img src="/img/service/swords-icon.png" alt="">
                    </div>
                    <div class="info-card-title">{{ $t('service.section3.infoCardTitle2') }}</div>
                    <div class="info-card-text">{{ $t('service.section3.infoCardText2') }}</div>
                </div>
                <div class="info-card">
                    <div class="info-card-icon">
                        <img src="/img/service/heart-icon.png" alt="">
                    </div>
                    <div class="info-card-title">{{ $t('service.section3.infoCardTitle3') }}</div>
                    <div class="info-card-text">{{ $t('service.section3.infoCardText3') }}</div>
                </div>
                <div class="info-card">
                    <div class="info-card-icon">
                        <img src="/img/service/lock-icon.png" alt="">
                    </div>
                    <div class="info-card-title">{{ $t('service.section3.infoCardTitle4') }}</div>
                    <div class="info-card-text">{{ $t('service.section3.infoCardText4') }}</div>
                </div>
            </div>
        </div>
    </div>
</template>

<script></script>

<style scoped lang="scss">
.bg-section3 {
    height: 100%;
    padding: 8vh 0;

    .section3-content {
        display: flex;
        flex-direction: column;
        padding: 0 2vh;

        .section3-left {
            margin-bottom: 4vh;

            h2 {
                font-family: "Cormorant Garamond", serif;
                font-size: 40px;
                font-weight: 700;
            }

            div {
                font-family: "Outfit", sans-serif;
                font-size: 20px;
            }
        }

        .section3-right {
            .info-card {
                background-color: #2E3642;
                padding: 4vh;
                max-width: 620px;

                .info-card-icon {
                    margin-bottom: 2vh;
                }

                .info-card-title {
                    font-family: "Cormorant Garamond", serif;
                    font-size: 29px;
                    font-weight: 600;
                }

                .info-card-text {
                    font-family: "Outfit", sans-serif;
                    font-size: 16px;
                }

                &:not(:last-child) {
                    margin-bottom: 2vh;
                }
            }
        }
    }

    .section3-content>div {
        flex: 1;
    }
}

@media (min-width: 576px) {
    .bg-section3 {
        .section3-content {
            padding: 0;
            flex-direction: row;

            .section3-left {
                margin: 0;
            }
        }
    }
}
</style>