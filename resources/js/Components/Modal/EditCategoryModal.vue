<template>
    <TransitionRoot appear :show="prop.isOpen" as="template">
        <Dialog as="div" @close="closeModal" class="relative z-30">
            <TransitionChild
                as="template"
                enter="duration-300 ease-out"
                enter-from="opacity-0"
                enter-to="opacity-100"
                leave="duration-200 ease-in-out"
                leave-from="opacity-100"
                leave-to="opacity-0"
            >
                <div
                    class="fixed inset-0 backdrop-blur-sm bg-black/25 dark:bg-black/50"
                />
            </TransitionChild>

            <div class="fixed inset-0 overflow-y-auto">
                <div
                    class="flex min-h-full items-center justify-center p-4 text-center"
                >
                    <TransitionChild
                        as="template"
                        enter="duration-300 ease-out"
                        enter-from="opacity-0 scale-95"
                        enter-to="opacity-100 scale-100"
                        leave="duration-200 ease-in"
                        leave-from="opacity-100 scale-100"
                        leave-to="opacity-0 scale-95"
                    >
                        <DialogPanel
                            class="w-full max-w-screen-sm sm:max-w-lg transform overflow-hidden rounded-2xl bg-white dark:bg-gray-800 p-6 text-left align-middle shadow-xl transition-all"
                        >
                            <DialogTitle
                                as="h3"
                                class="text-lg font-medium leading-6 text-gray-900 dark:text-gray-100"
                            >
                                Edit {{ tempCategory.name }}
                            </DialogTitle>
                            <form @submit.prevent="updateCategory">
                                <!-- User Feedback -->
                                <div
                                    v-if="status"
                                    :class="statusClass"
                                    class="p-2 my-3 rounded text-center"
                                >
                                    {{ status }}
                                </div>

                                <div class="grid gap-4 mt-2">
                                    <!-- Name Input -->
                                    <div>
                                        <label
                                            for="name"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300"
                                            >Name</label
                                        >
                                        <input
                                            type="text"
                                            name="name"
                                            id="name"
                                            v-model="tempCategory.name"
                                            class="bg-gray-50 dark:bg-gray-700 border border-gray-300 dark:border-gray-600 text-gray-900 dark:text-gray-200 text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5"
                                            placeholder="Category Name"
                                        />
                                    </div>
                                    <!-- Active -->
                                    <div>
                                        <label
                                            for="name"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300"
                                            >Publish?
                                            {{
                                                tempCategory.status
                                                    ? "Sure"
                                                    : "No   "
                                            }}</label
                                        >
                                        <Switch
                                            v-model="tempCategory.status"
                                            :class="
                                                Boolean(tempCategory.status)
                                                    ? 'bg-teal-900'
                                                    : 'bg-teal-700'
                                            "
                                            class="relative inline-flex h-[38px] w-[74px] shrink-0 cursor-pointer rounded-full border-2 border-transparent transition-colors duration-200 ease-in-out focus:outline-none focus-visible:ring-2 focus-visible:ring-white/75"
                                        >
                                            <span class="sr-only"
                                                >Use setting</span
                                            >
                                            <span
                                                aria-hidden="true"
                                                :class="
                                                    Boolean(tempCategory.status)
                                                        ? 'translate-x-9'
                                                        : 'translate-x-0'
                                                "
                                                class="pointer-events-none inline-block h-[34px] w-[34px] transform rounded-full bg-white shadow-lg ring-0 transition duration-200 ease-in-out"
                                            />
                                        </Switch>
                                    </div>
                                </div>

                                <!-- Action Buttons -->
                                <div class="mt-4 flex gap-2 justify-end">
                                    <button
                                        type="button"
                                        class="inline-flex justify-center rounded-md bg-gray-100 dark:bg-gray-700 px-4 py-2 text-sm font-medium text-gray-900 dark:text-gray-200 hover:bg-gray-200 dark:hover:bg-gray-600 focus:outline-none"
                                        @click="closeModal"
                                    >
                                        Cancel
                                    </button>
                                    <button
                                        type="submit"
                                        class="inline-flex justify-center rounded-md bg-blue-100 dark:bg-blue-600 px-4 py-2 text-sm font-medium text-blue-900 dark:text-white hover:bg-blue-200 dark:hover:bg-blue-700 focus:outline-none"
                                        :class="{
                                            'opacity-50 cursor-not-allowed':
                                                tempCategory.processing,
                                        }"
                                        :disabled="tempCategory.processing"
                                    >
                                        Update
                                    </button>
                                </div>
                            </form>
                        </DialogPanel>
                    </TransitionChild>
                </div>
            </div>
        </Dialog>
    </TransitionRoot>
</template>

<script setup>
import { ref, onMounted } from "vue";
import { useForm } from "@inertiajs/vue3";
import {
    TransitionRoot,
    TransitionChild,
    Dialog,
    DialogPanel,
    DialogTitle,
    Switch,
} from "@headlessui/vue";

const prop = defineProps(["category", "isOpen", "categories"]);
const emit = defineEmits(["toggleModal"]);

const tempCategory = useForm({
    id: null,
    name: null,
    status: null,
});

const status = ref(null);

const statusClass = ref("");

onMounted(() => {
    Object.assign(tempCategory, { ...prop.category });
});

function closeModal() {
    emit("toggleModal", false);
}

function updateCategory() {
    status.value = null;
    statusClass.value = "";
    tempCategory.put(`/categories/${prop.category.id}`, {
        onSuccess: () => {
            status.value = "Category updated successfully!";
            statusClass.value =
                "bg-green-100 text-green-800 dark:bg-indigo-800 dark:text-indigo-100";
            setTimeout(closeModal, 1500);
        },
        onError: (error) => {
            status.value = "Failed to update the category.";
            statusClass.value =
                "bg-red-100 text-red-800 dark:bg-indigo-900 dark:text-indigo-100";
            console.error(error);
        },
    });
}
</script>
