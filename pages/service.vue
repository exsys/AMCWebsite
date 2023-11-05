<template>
    <div>
        <Header />
        <servicePage />
        <Footer />
    </div>
</template>

<script>
import servicePage from '@/components/service/servicePage.vue';

export default {
    name: "service",
    components: {
        servicePage,
    }
}
</script>

<style>

</style>