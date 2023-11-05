<template>
    <div class="bg-section6">
        <div class="section6-content">
            <div class="section6-left">
                <img src="/img/service/bg1-section6.jpg" alt="">
            </div>
            <div class="section6-right">
                <h2>{{ $t('service.section6.title') }}</h2>
                <img src="/img/cross-icon-white.png" alt="">
                <div class="my-4">
                    <div class="info-block">
                        <h3>{{ $t('service.section6.no1') }}</h3>
                        <div>{{ $t('service.section6.info1') }}</div>
                    </div>
                    <div class="info-block">
                        <h3>{{ $t('service.section6.no1') }}</h3>
                        <div>{{ $t('service.section6.info2') }}</div>
                    </div>
                    <div class="info-block">
                        <h3>{{ $t('service.section6.no1') }}</h3>
                        <div>{{ $t('service.section6.info3') }}</div>
                    </div>
                    <div class="info-block">
                        <h3>{{ $t('service.section6.no2') }}</h3>
                        <div>{{ $t('service.section6.info4') }}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script></script>

<style scoped lang="scss">
.bg-section6 {
    background-color: #D1B06B;

    .section6-content {
        display: flex;
        flex-direction: column;

        .section6-left {
            img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
        }

        .section6-right {
            padding: 2vh;

            h2 {
                font-family: "Cormorant Garamond", serif;
                font-size: 33px;
                font-weight: 700;
            }

            .info-block {
                display: flex;
                align-items: center;
                color: #1F2732;

                &:not(:last-child) {
                    margin-bottom: 3vh;
                }

                h3 {
                    font-family: "Cormorant Garamond", serif;
                    font-size: 40px;
                    font-weight: 700;
                    margin-right: 4vh;
                }

                div {
                    font-family: "Outfit", sans-serif;
                    font-size: 20px;
                }
            }
        }
    }
}

@media (min-width: 769px) {
    .bg-section6 {
        .section6-content {
            flex-direction: row;

            .section6-left,
            .section6-right {
                width: 50%;
            }

            .section6-right {
                padding: 6vh;
            }
        }
    }
}

@media (min-width: 1200px) {
    .bg-section6 {
        .section6-content {
            .section6-right {
                .info-block {
                    max-width: 90%;
                }
            }
        }
    }
}
</style>