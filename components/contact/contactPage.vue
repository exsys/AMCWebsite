<template>
    <div class="about-page-container">
        <div class="bg-section1">
            <div class="section1-container">
                <h1>{{ $t('contactUs.title') }}</h1>
            </div>
        </div>
        <div class="bg-section2">
            <div class="section2-container container">
                <div class="contact-form-container">
                    <div class="form-content-container">
                        <div v-if="isSubmited" class="alert alert-success" role="alert">
                            {{ $t('message.submitted') }}
                        </div>
                        <form @submit.prevent="onClick">
                            <div class="form-content d-flex justify-content-center flex-wrap">
                                <div class="form-left d-flex flex-column">
                                    <input type="text" :placeholder="$t('contactUs.yourName')" v-model="form.name" required>
                                    <input type="email" :placeholder="$t('contactUs.yourEmail')" v-model="form.email" required>
                                    <input type="text" :placeholder="$t('contactUs.yourPhoneNumber')" v-model="form.phone" required>
                                    <input type="text" :placeholder="$t('contactUs.requestedService')" v-model="form.request" required>
                                </div>
                                <div class="form-right">
                                    <textarea name="" id="" cols="30" rows="4" :placeholder="$t('contactUs.yourMessage')"
                                        v-model="form.message" required/>
                                    <div class="submit-btn">
                                        <defaultButton :text="$t('contactUs.sendMessage')" />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="container mt-5">
                <div class="section2-bottom d-flex">
                    <div class="contact-info-container">
                        <a class="contact-info d-flex d-sm-none" href="tel:+0123456789">
                            <img src="/svg/phone-icon.svg" alt="">
                            <div class="d-flex flex-column">
                                <div>{{ $t('contactUs.callUsOn') }}:</div>
                                <div>+0123456789</div>
                            </div>
                        </a>
                        <div class="contact-info cursor-text d-none d-sm-flex">
                            <img src="/svg/phone-icon.svg" alt="">
                            <div class="d-flex flex-column">
                                <div>{{ $t('contactUs.callUsOn') }}:</div>
                                <div>+0123456789</div>
                            </div>
                        </div>
                    </div>
                    <div class="contact-info-container">
                        <a class="contact-info" href="mailto:placeholder@gmail.com">
                            <img src="/svg/mail-icon.svg" alt="">
                            <div class="d-flex flex-column">
                                <div>{{ $t('contactUs.emailUs') }}:</div>
                                <div>placeholder@gmail.com</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import defaultButton from '../widgets/defaultButton.vue';
import emailjs from "emailjs-com";

export default {
    name: "contactPage",
    components: {
        defaultButton,
    },
    data() {
        return {
            isSubmited: false,
            form: {
                name: "",
                email: "",
                phone: "",
                request: "",
                message: "",
            }
        }
    },
    methods: {
        onClick() {
            if (!this.form.name || !this.form.email || !this.form.phone || !this.form.request || !this.form.message)
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
.about-page-container {
    .bg-section1 {
        height: 100vh;
        width: 100vw;
        background-image:
            linear-gradient(rgba(0, 0, 0, 0.65), rgba(0, 0, 0, 0.65)),
            url("/img/contact/bg-section1.jpg");
        background-size: cover;
        background-position: 100% 30%;

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
        padding: 6vh 0;

        .section2-container {
            .contact-form-container {
                display: flex;
                justify-content: center;

                .form-content-container {
                    background-color: #161D27;
                    width: 100%;
                    padding: 2vh;

                    .form-left {
                        width: 100%;

                        input {
                            width: 100%;
                            font-size: 16px;
                            background-color: transparent;
                            border: none;
                            border-bottom: 1px solid #3A4553;
                            color: #D7D7D7;
                            padding: 1vh 0;
                            margin-bottom: 3vh;
                            font-family: "Outfit", sans-serif;

                            &:focus {
                                outline: none;
                            }
                        }
                    }

                    .form-right {
                        width: 100%;

                        textarea {
                            width: 100%;
                            font-size: 16px;
                            background-color: transparent;
                            border: 1px solid #D1B06B;
                            color: white;
                            padding: 2vh;
                            resize: none;
                            margin-top: 4.5vh;
                            font-family: "Outfit", sans-serif;

                            &:focus {
                                outline: none;
                            }
                        }

                        .submit-btn {
                            margin-top: 2vh;
                            width: 285px;
                        }
                    }
                }
            }
        }

        .section2-bottom {
            flex-direction: column;

            .contact-info-container {
                background-color: #161D27;
                padding: 3vh;
                width: 100%;
                display: flex;
                flex-direction: column;
                margin-bottom: 2vh;

                .contact-info {
                    display: flex;
                    align-items: center;
                    color: #CCAA60;
                    width: 50%;
                    cursor: pointer;
                    text-decoration: none;

                    img {
                        margin-right: 1vh;
                    }
                }
            }
        }
    }
}

::placeholder {
    color: #D7D7D7;
    opacity: 1;
}

:-ms-input-placeholder {
    color: #D7D7D7;
}

::-ms-input-placeholder {
    color: #D7D7D7;
}

@media (min-width: 576px) {
    .about-page-container {
        .bg-section2 {
            .section2-container {
                .contact-form-container {

                    .form-content-container {
                        background-color: #161D27;
                        width: 100%;
                        padding: 6vh 8vh;

                        .form-left {
                            flex: 1;
                            margin-right: 8vh;
                        }

                        .form-right {
                            flex: 1;
                        }
                    }
                }
            }

            .section2-bottom {
                .contact-info-container {
                    width: 100%;
                    flex-direction: row;
                    padding: 3vh 5vh;
                }
            }
        }
    }
}

@media (min-width: 769px) {
    .about-page-container {
        .bg-section2 {
            .section2-container {
                .contact-form-container {
                    .form-content-container {
                        background-color: #161D27;
                        width: 100%;
                        padding: 8vh 12vh;
                    }
                }
            }

            .section2-bottom {
                flex-direction: row;

                .contact-info-container {
                    width: 50%;
                    margin-bottom: 0;
                    flex-direction: row;

                    &:first-child {
                        margin-right: 3vh;
                    }

                    .cursor-text {
                        cursor: text;
                    }
                }
            }
        }
    }
}
</style>