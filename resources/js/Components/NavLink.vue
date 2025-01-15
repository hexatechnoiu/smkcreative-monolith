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
        <a :href="href" :class="[
            'flex  dark:hover:bg-white/20 items-center select-none cursor-pointer p-2 text-indigo-900 rounded-lg dark:text-white',
            { 'bg-indigo-300  hover:bg-indigo-300 dark:bg-white/20': active },
            { 'hover:bg-indigo-200': !active },
        ]">
            <slot />
            <span class="flex-1 ms-3 whitespace-nowrap">{{ name }}</span>
        </a>
    </li>
</template>
