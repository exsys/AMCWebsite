<template>
    <div class="bg-section5 container">
        <div class="section5-content">
            <div class="section5-left">
                <div class="info-block">
                    <h2>{{ $t('service.section5.title') }}</h2>
                    <div>{{ $t('service.section5.info1') }}</div>
                </div>
                <div class="info-block">
                    <h2>{{ $t('service.section5.title2') }}</h2>
                    <div>{{ $t('service.section5.info2') }}</div>
                </div>
            </div>
            <div class="section5-right">
                <img src="/img/service/bg1-section5.jpg" alt="">
            </div>
        </div>
    </div>
</template>

<script></script>

<style scoped lang="scss">
.bg-section5 {
    height: 100%;
    padding: 12vh 2vh;

    .section5-content {
        display: flex;
        flex-direction: column;
        justify-content: center;

        .section5-left,
        .section5-right {
            flex: 1;
        }

        .section5-left {
            align-self: center;

            .info-block {
                margin-bottom: 4vh;

                h2 {
                    font-family: "Cormorant Garamond", serif;
                    font-size: 40px;
                    font-weight: 700;
                    margin-bottom: 2vh;
                }

                div {
                    font-family: "Outfit", sans-serif;
                    font-size: 20px;
                }
            }
        }

        .section5-right {
            text-align: center;

            img {
                width: 100%;
            }
        }
    }
}

@media (min-width: 576px) {
    .bg-section5 {
        .section5-content {
            .section5-right {
                img {
                    width: unset;
                }
            }
        }
    }
}

@media (min-width: 769px) {
    .bg-section5 {
        padding-inline: 0;

        .section5-content {
            flex-direction: row;
        }
    }
}
</style>