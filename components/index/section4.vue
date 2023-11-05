<template>
    <div class="section4-container">
        <div class="bg-section4">
            <div class="container section4-main-content">
                <div class="row mb-2">
                    <h2>{{ $t('index.section4.title') }}</h2>
                </div>
                <div class="row">
                    <div class="icon-container mb-3">
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
import defaultButton2 from '@/components/widgets/defaultButton2.vue';
import contactForm from "@/components/widgets/contactForm.vue";

export default {
    components: {
        defaultButton2,
        contactForm,
    },
    data() {
        return {
            form: {
                name: "",
                email: "",
                phone: "",
                wechat: "",
                message: "",
            }
        }
    },
    methods: {
        onClick() {
            console.log(this.form);
            this.form = {};
        }
    }
}
</script>

<style scoped lang="scss">
.section4-container {
    .bg-section4 {
        height: 100vh;
        width: 100vw;
        background-image:
            linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
            url("/img/index/bg-section4.png");

        .section4-main-content {
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;

            h2 {
                font-family: "Cormorant Garamond", serif;
                font-size: 40px;
                font-weight: 700;
            }
        }
    }
}

@media (min-width: 576px) {
    .section4-container {
        .bg-section4 {
            height: 85vh;
        }
    }
}
</style>