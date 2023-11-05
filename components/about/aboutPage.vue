<template>
    <div class="about-page-container">
        <div class="bg-section1">
            <div class="section1-container">
                <h1>{{ $t('about.title') }}</h1>
            </div>
        </div>
        <div class="bg-section2">
            <div class="section2-container container">
                <div class="row">
                    {{ $t('about.info1') }}
                </div>
                <div class="row">
                    {{ $t('about.info2') }}
                </div>
                <div class="row">
                    {{ $t('about.info3') }}
                </div>
                <div class="row">
                    {{ $t('about.info4') }}
                </div>
                <div class="row">
                    <div class="info-card">
                        {{ $t('about.infoCard') }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "aboutPage",
}
</script>

<style scoped lang="scss">
.about-page-container {
    .bg-section1 {
        height: 100vh;
        width: 100vw;
        background-image:
            linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
            url("/img/about/bg-section1.jpg");
        background-size: cover;
        background-position: center;

        .section1-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;

            h1 {
                font-family: "Cormorant Garamond", serif;
                font-size: 65px;
                font-weight: 700;
            }
        }
    }

    .bg-section2 {
        height: 100%;

        .section2-container {
            padding: 7vh 0;

            .row {
                text-align: center;
                width: 95%;
                margin: 0 auto;
                font-family: "Outfit", sans-serif;
                font-size: 20px;
                margin-bottom: 5vh;

                .info-card {
                    font-family: "Cormorant Garamond", serif;
                    font-weight: 600;
                    font-size: 32px;
                    font-style: italic;
                    background-color: #D1B06B;
                    color: #1F2732;
                    padding: 5vh;
                }
            }
        }
    }
}

@media (min-width: 576px) {
    .about-page-container {
        .bg-section2 {
            .section2-container {
                .row {
                    width: 65%;
                    font-size: 22px;
                    line-height: 34px;
                }
            }
        }
    }
}
</style>