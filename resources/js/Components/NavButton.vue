<script setup lang="ts">
import { defineProps, defineEmits } from "vue";

const prop = defineProps({
    name: { type: String, required: true },
});
const emit = defineEmits(["onClick"]);
</script>

<template>
    <li>
        <button
            class="flex w-full justify-start text-start items-center select-none cursor-pointer p-2 text-indigo-900 rounded-lg dark:text-white hover:bg-indigo-300 dark:hover:bg-white/20"
            @click="$emit('onClick', $event)"
        >
            <slot />
            <span class="flex-1 ms-3 whitespace-nowrap">{{ name }}</span>
        </button>
    </li>
</template>
