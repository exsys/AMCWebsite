<template>
    <div class="bg-section1">
        <div class="section1-container">
            <h1>{{ $t('service.section1.title') }}</h1>
        </div>
    </div>
</template>

<script></script>

<style scoped lang="scss">
.bg-section1 {
    height: 100vh;
    width: 100vw;
    background-image:
        linear-gradient(rgba(0, 0, 0, 0.65), rgba(0, 0, 0, 0.65)),
        url("/img/service/bg-section1.png");
    background-size: cover;
    background-position: bottom;

    .section1-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100%;

        h1 {
            font-family: "Cormorant Garamond", serif;
            font-size: 65px;
            font-weight: 700;
            text-align: center;
        }
    }
}
</style>