<template>
    <div class="bg-section7 container">
        <div class="section7-content">
            <div class="container">
                <div class="row">
                    <h2>{{ $t('service.section7.title') }}</h2>
                </div>
                <div class="row mb-5">
                    <div>
                        <img src="/img/cross-lg-icon.png" alt="">
                    </div>
                </div>
                <div class="row">
                    <contactForm />
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import contactForm from "@/components/widgets/contactForm.vue";

export default {
    components: {
        contactForm,
    }
}
</script>

<style scoped lang="scss">
.bg-section7 {
    height: 100%;
    width: 100vw;
    padding: 10vh 0;

    .section7-content {
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
}
</style>