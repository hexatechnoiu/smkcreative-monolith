<script setup lang="ts">
import { defineProps } from "vue";

defineProps({
    href: { type: String, default: "#" },
    name: { type: String, required: true },
    active: { type: Boolean, default: false },
});
</script>

<template>
    <li>
        <a
            :href="href"
            :class="[
                'flex items-center select-none cursor-pointer p-2 text-indigo-900 rounded-lg dark:text-white',
                'hover:bg-indigo-300 dark:hover:bg-white/20',
                { 'bg-indigo-200 dark:bg-white/20': active },
            ]"
        >
            <slot />
            <span class="flex-1 ms-3 whitespace-nowrap">{{ name }}</span>
        </a>
    </li>
</template>
