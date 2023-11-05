<template>
    <div class="contact-form-container">
        <div class="form-content-container">
            <div v-if="isSubmited" class="alert alert-success" role="alert">
                {{ $t('message.submitted') }}
            </div>
            <form @submit.prevent="onClick">
                <div class="form-row">
                    <input type="text" :placeholder="`${$t('contactForm.fullName')} *`" v-model="form.name" required>
                    <input type="email" :placeholder="`${$t('contactForm.emailAddress')} *`" v-model="form.email" required>
                </div>
                <div class="form-row">
                    <input type="text" :placeholder="`${$t('contactForm.phoneNumber')} *`" v-model="form.phone" required>
                    <input type="text" :placeholder="$t('contactForm.lineWeChatID')" v-model="form.wechat">
                </div>
                <div class="form-row">
                    <textarea name="message" id="message" cols="50" rows="3" :placeholder="`${$t('contactForm.leaveAMessage')} *`"
                        v-model="form.message" required/>
                </div>
                <div class="btn-container">
                    <defaultButton2 :text="$t('contactForm.submit')" />
                </div>
            </form>
        </div>
    </div>
</template>

<script>
import defaultButton2 from '@/components/widgets/defaultButton2.vue';
import emailjs from "emailjs-com";

export default {
    components: {
        defaultButton2
    },
    data() {
        return {
            isSubmited: false,
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
            if (!this.form.name || !this.form.email || !this.form.phone || !this.form.message)
                return

            emailjs
            .send(
                "service_q1q9sbl",
                "template_dvd8jbz",
                {
                    ...this.form
                },
                "32jhZ0688DNR_Rk6Y"
                )
                .then(
                (result) => {
                    this.form = {}
                    this.isSubmited = true
                    setTimeout(() => (this.isSubmited = false), 10 * 1000)
                },
                (error) => {
                    console.log(error.text)
                }
            )
        }
    }
}
</script>

<style scoped lang="scss">
.contact-form-container {
    display: flex;
    justify-content: center;

    .form-content-container {
        background-color: rgba(31, 39, 50, 0.8);
        width: 100%;
        padding: 4vh 2vh;

        .form-row {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;

            input,
            textarea {
                width: 100%;
                font-size: 20px;
                background-color: transparent;
                border: none;
                border-bottom: 1px solid #3A4553;
                color: #D1B06B;
                padding: 1vh 0;
                margin-bottom: 3vh;

                &:focus {
                    outline: none;
                }
            }
        }

        textarea {
            width: 100%;
            resize: none;
        }

        .btn-container {
            margin: 0 auto;
            width: 285px;
        }
    }
}

::placeholder {
    color: #D1B06B;
    opacity: 1;
}

:-ms-input-placeholder {
    color: #D1B06B;
}

::-ms-input-placeholder {
    color: #D1B06B;
}

@media (min-width: 576px) {
    .contact-form-container {
        .form-content-container {
            padding: 4vh 12vh;

            .form-row {
                margin-bottom: 3vh;

                input,
                textarea {
                    flex: 1;
                    margin: 0;
                }

                input:first-child {
                    margin-right: 3vh;
                }
            }
        }
    }
}

@media (min-width: 769px) {
    .contact-form-container {
        .form-content-container {
            padding: 4vh 20vh;

            .form-row:nth-child(3) {
                margin-bottom: 5vh;
            }
        }
    }
}
</style>