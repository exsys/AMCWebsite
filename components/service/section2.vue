<template>
    <div class="bg-section2 container">
        <div class="section2-content">
            <div class="section2-left d-flex">
                <div class="image-container-sm bg1" alt=""></div>
                <div class="image-container-sm bg2" alt=""></div>
            </div>
            <div class="section2-right">
                <img src="/img/cross-lg-icon.png" alt="">
                <div class="info-text">
                    {{ $t('service.section2.info1') }}
                </div>
                <div class="info-text2">
                    {{ $t('service.section2.info2') }}
                </div>
            </div>
        </div>
    </div>
</template>

<script></script>

<style scoped lang="scss">
.bg-section2 {
    height: 100%;
    padding: 10vh 0;

    .section2-content {
        display: flex;
        flex-direction: column;
        padding: 0 2vh;

        .section2-left {
            width: 100%;
            flex-direction: column;

            .image-container-sm {
                width: 100%;
                max-width: 350px;
                height: 220px;
                background-size: cover;
                background-position: center;

                &.bg1 {
                    background-image: url("/img/service/bg1-section2.png");
                    margin-bottom: 3vh;
                }

                &.bg2 {
                    background-image: url("/img/service/bg2-section2.jpg");
                }
            }
        }

        .section2-right {
            width: 100%;
            padding-top: 5vh;

            .info-text {
                margin-top: 5vh;
                margin-bottom: 8vh;
                font-family: "Outfit", sans-serif;
                font-size: 22px;
            }

            .info-text2 {
                font-family: "Cormorant Garamond", serif;
                font-size: 40px;
                font-style: italic;
                color: #D1B06B;
            }
        }
    }
}

@media (min-width: 576px) {
    .bg-section2 {
        .section2-content {
            padding: 0;

            .section2-left {
                flex-direction: row;

                .image-container-sm {
                    &.bg1 {
                        margin-right: 3vh;
                    }
                }
            }

            .section2-right {
                width: 70%;
            }
        }
    }
}

@media (min-width: 769px) {
    .bg-section2 {
        .section2-content {
            flex-direction: row;

            .section2-left {
                width: 40%;
                flex-direction: column;

                .image-container-sm {
                    &.bg1 {
                        margin-right: 0;
                    }
                }
            }

            .section2-right {
                padding-top: 0;
                padding-left: 5vh;
                width: 60%;

                .info-text {
                    font-size: 20px;
                    margin-top: 3vh;
                    margin-bottom: 6vh;
                }
            }
        }
    }
}

@media (min-width: 1200px) {
    .bg-section2 {
        .section2-content {
            .section2-left {
                width: 30%;
            }

            .section2-right {
                width: 67%;
                padding-left: 0;

                .info-text {
                    font-size: 22px;
                    margin-top: 5vh;
                    margin-bottom: 8vh;
                }
            }
        }
    }
}
</style>