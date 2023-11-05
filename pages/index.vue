<template>
    <div>
        <Header />
        <div class="content">
            <section1 />
            <section2 />
            <section3 />
            <section4 />
        </div>
        <Footer />
    </div>
</template>

<script>
import section1 from "@/components/index/section1.vue";
import section2 from "@/components/index/section2.vue";
import section3 from "@/components/index/section3.vue";
import section4 from "@/components/index/section4.vue";

export default {
    components: {
        section1,
        section2,
        section3,
        section4,
    }
}
</script>

<style lang="scss">
body,
html {
    padding: 0;
    margin: 0;
    height: 100%;
}

body {
    color: white;
    background-color: #1F2732;
    overflow-x: hidden;
}

.content {
    width: 100%;
    overflow: hidden;
}
</style>