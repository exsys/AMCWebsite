<template>
    <div class="bg-section4">
        <div class="section4-container">
            <div class="section4-content">
                <div class="section4-left">
                    <h2>{{ $t('service.section4.title') }}</h2>
                    <img src="/img/cross-lg-icon.png" alt="">
                    <div>{{ $t('service.section4.qualityEducation1') }}</div>
                    <div>{{ $t('service.section4.qualityEducation2') }}</div>
                    <div>{{ $t('service.section4.qualityEducation3') }}</div>
                    <div>{{ $t('service.section4.qualityEducation4') }}</div>
                    <div>{{ $t('service.section4.qualityEducation5') }}</div>
                </div>
                <div class="section4-middle">
                    <img src="/img/service/bg1-section4.jpg" alt="">
                </div>
                <div class="section4-right">
                    <h2>{{ $t('service.section4.title2') }}</h2>
                    <img src="/img/cross-lg-icon.png" alt="">
                    <div>{{ $t('service.section4.eliteEducation1') }}</div>
                    <div>{{ $t('service.section4.eliteEducation2') }}</div>
                    <div>{{ $t('service.section4.eliteEducation3') }}</div>
                </div>
            </div>
        </div>
    </div>
</template>

<script></script>

<style scoped lang="scss">
.bg-section4 {
    height: 100%;
    width: 100vw;
    background-image:
        linear-gradient(rgba(0, 0, 0, 0.65), rgba(0, 0, 0, 0.65)),
        url("/img/service/bg-section4.png");
    background-size: cover;
    background-position: bottom;

    .section4-container {
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 15vh 0;

        .section4-content {
            background-color: rgba(31, 39, 50, 0.85);
            width: 95%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 6vh 3vh;

            h2 {
                font-family: "Cormorant Garamond", serif;
                font-size: 33px;
                font-weight: 700;
            }

            img {
                margin: 4vh 0;
            }

            .section4-left>div,
            .section4-right>div {
                font-family: "Outfit", sans-serif;
                font-size: 18px;
                margin-bottom: 4vh;
            }

            .section4-left {
                flex: 2;
            }

            .section4-middle {
                flex: 1;
                margin: 0 4vh 4vh;
                text-align: center;

                img {
                    margin: 0;
                    width: 100%;
                    height: 100%;
                    object-fit: cover;
                }
            }

            .section4-right {
                flex: 2;
            }
        }
    }
}

@media (min-width: 576px) {
    .bg-section4 {
        .section4-container {
            .section4-content {
                width: 80%;

                .section4-middle {
                    img {
                        width: 50%;
                    }
                }
            }
        }
    }
}

@media (min-width: 769px) {
    .bg-section4 {
        .section4-container {
            .section4-content {
                width: 65%;
                padding: 10vh 6vh;

                .section4-middle {
                    img {
                        width: 100%;
                    }
                }
            }
        }
    }
}

@media (min-width: 1200px) {
    .bg-section4 {
        .section4-container {
            .section4-content {
                flex-direction: row;

                .section4-middle {
                    margin: 0 4vh;
                }
            }
        }
    }
}
</style>