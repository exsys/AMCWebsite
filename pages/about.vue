<template>
    <div>
        <Header />
        <aboutPage />
        <Footer />
    </div>
</template>

<script>
import aboutPage from '@/components/about/aboutPage.vue';

export default {
    name: "about",
    components: {
        aboutPage,
    }
}
</script>

<style>

</style>