<script setup>
import { ref, watch } from 'vue';

const prop = defineProps(['name', 'placeholder', 'prevalue', 'label'])
const emit = defineEmits(['model']);
const model = ref(prop.prevalue)
watch(model, () => {emit('model', model.value)}, {})
</script>

<template>
    <div>
        <label :for="prop.name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">{{ prop.label }}</label>
        <input type="text" :name="prop.name" :id="prop.name" v-model="model"
            class="bg-gray-50 dark:bg-gray-700 border border-gray-300 dark:border-gray-600 text-gray-900 dark:text-gray-200 text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5"
            :placeholder="prop.placeholder" />
    </div>
</template>