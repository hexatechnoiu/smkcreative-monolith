<script setup lang="ts">
import { ref, watch, computed } from "vue";

const prop = defineProps(["name", "label", "data", "selected"]);
const emit = defineEmits(["model"]);

// Ensure model is set to selected value or first item in data
const model = ref(prop.selected ?? prop.data[0]?.id);

// Watch for model changes and emit updates
watch(model, () => {
    emit("model", model.value);
});

// Watch prop.selected for external changes and update model
watch(() => prop.selected, (newValue) => {
    model.value = newValue ?? prop.data[0]?.id;
});
</script>

<template>
    <div>
        <label :for="prop.name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">
            {{ prop.label }}
        </label>
        <select
            :name="prop.name"
            :id="prop.name"
            v-model="model"
            class="bg-gray-50 dark:bg-gray-700 border border-gray-300 dark:border-gray-600 text-gray-900 dark:text-gray-200 text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5"
        >
            <option v-for="item in prop.data" :key="item.id" :value="item.id || item.name">
                {{ item.name }}
            </option>
        </select>
    </div>
</template>
