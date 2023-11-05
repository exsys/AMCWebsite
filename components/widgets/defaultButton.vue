<template>
    <button class="default-button-container" @click="onClick">
        <span class="default-button-text">{{ text }}</span>
    </button>
</template>

<script setup>
const props = defineProps({
    text: String,
    onClick: Function
});
</script>

<style scoped lang="scss">
.default-button-container {
    width: 100%;
    background-color: #D1B06B;
    color: black;
    padding: 1.4vh 3vh;
    cursor: pointer;
    text-align: center;
    border: 1px solid transparent;

    &:hover {
        background-color: #1F2732;
        color: white;
        border: 1px solid #D1B06B;
    }

    &:active {
        background-color: white;
        color: black;
    }

    .default-button-text {
        font-size: 22px;
        font-family: "Outfit", sans-serif;
    }
}
</style>