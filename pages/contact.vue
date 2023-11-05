<template>
    <div>
        <Header />
        <contactPage />
        <Footer />
    </div>
</template>

<script>
import contactPage from '@/components/contact/contactPage.vue';

export default {
    name: "contact",
    components: {
        contactPage,
    }
}
</script>

<style>

</style>