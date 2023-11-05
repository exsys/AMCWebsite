<template>
    <div class="service-page-container">
        <section1 />
        <section2 />
        <section3 />
        <section4 />
        <section5 />
        <section6 />
        <section7 />
    </div>
</template>

<script>
import section1 from "./section1.vue";
import section2 from "./section2.vue";
import section3 from "./section3.vue";
import section4 from "./section4.vue";
import section5 from "./section5.vue";
import section6 from "./section6.vue";
import section7 from "./section7.vue";

export default {
    name: "servicePage",
    components: {
        section1,
        section2,
        section3,
        section4,
        section5,
        section6,
        section7,
    }
}
</script>

<style scoped lang="scss"></style>