<script setup lang="ts">
import { defineProps, defineEmits } from "vue";

// Define props with validation and defaults
const prop = defineProps({
  href: { type: String, default: "#" },
  name: { type: String, required: true },
  type: { type: String, default: "link", validator: (value: string) => ["link", "button"].includes(value) },
  active: { type: Boolean, default: false },
});

// Define emits
const emit = defineEmits(["onClick"]);
</script>

<template>
  <li>
    <Link
      v-if="type === 'link'"
      :href="href"
      :class="[
        'flex items-center select-none cursor-pointer p-2 text-gray-900 rounded-lg dark:text-white',
        'hover:bg-gray-100 dark:hover:bg-white/20',
        { 'bg-gray-100 dark:bg-white/20': active }
      ]"
    >
      <slot />
      <span class="flex-1 ms-3 whitespace-nowrap">{{ name }}</span>
    </Link>
    <button
      v-else
      :class="[
        'flex items-center select-none cursor-pointer p-2 text-gray-900 rounded-lg dark:text-white',
        'hover:bg-gray-100 dark:hover:bg-white/20',
        { 'bg-gray-100 dark:bg-white/20': active }
      ]"
      @click="$emit('onClick', $event)"
    >
      <slot />
      <span class="flex-1 ms-3 whitespace-nowrap">{{ name }}</span>
    </button>
  </li>
</template>
