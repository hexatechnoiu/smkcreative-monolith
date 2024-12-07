<template>
    <TransitionRoot appear :show="prop.isOpen" as="template">
        <Dialog as="div" @close="closeModal" class="relative z-10">
            <TransitionChild
                as="template"
                enter="duration-300 ease-out"
                enter-from="opacity-0"
                enter-to="opacity-100"
                leave="duration-200 ease-in-out"
                leave-from="opacity-100"
                leave-to="opacity-0"
            >
                <div class="fixed inset-0 backdrop-blur-sm bg-black/25" />
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
                            class="w-full max-w-md transform overflow-hidden rounded-2xl bg-white p-6 text-left align-middle shadow-xl transition-all"
                        >
                            <DialogTitle
                                as="h3"
                                class="text-lg font-medium leading-6 text-gray-900"
                            >
                                Add new Project
                            </DialogTitle>
                            <form @submit.prevent="CreateProject">
                                <div class="grid mt-2">
                                    <div class="my-1.5">
                                        <label
                                            for="name"
                                            class="block mb-2 text-sm font-medium text-gray-900"
                                            >Nama</label
                                        >
                                        <input
                                            type="text"
                                            name="name"
                                            id="name"
                                            v-model="Project.name"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                                            placeholder="Project Name"
                                        />
                                    </div>
                                    <div class="my-1.5">
                                        <label
                                            for="category"
                                            class="block mb-2 text-sm font-medium text-gray-900"
                                            >Kategori</label
                                        >
                                        <select
                                            name="category"
                                            id="category"
                                            v-model="Project.category_id"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                                            placeholder="Project Name"
                                        >
                                            <option
                                                v-for="cat in prop.categories"
                                                :key="cat.id"
                                                :value="cat.id"
                                            >
                                                {{ cat.name }}
                                            </option>
                                        </select>
                                    </div>
                                    <div class="my-1.5">
                                        <label
                                            for="link"
                                            class="block mb-2 text-sm font-medium text-gray-900"
                                            >Link</label
                                        >
                                        <input
                                            type="url"
                                            name="link"
                                            id="link"
                                            v-model="Project.link"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                                            placeholder="https://example.com"
                                        />
                                    </div>
                                    <div class="my-1.5">
                                        <label
                                            for="photo"
                                            class="block mb-2 text-sm font-medium text-gray-900"
                                            >Foto</label
                                        >
                                        <img
                                            v-if="Project.photoPreview"
                                            :src="Project.photoPreview"
                                            class="rounded-lg mb-2"
                                            alt="Project Preview"
                                        />
                                        <input
                                            type="file"
                                            name="photo"
                                            id="photo"
                                            @change="handleFileChange"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                                        />
                                    </div>
                                </div>
                                <div class="mt-4 flex gap-2 justify-end">
                                    <button
                                        type="button"
                                        class="inline-flex justify-center rounded-md bg-gray-100 px-4 py-2 text-sm font-medium text-gray-900 hover:bg-gray-200 focus:outline-none"
                                        @click="closeModal"
                                    >
                                        Cancel
                                    </button>
                                    <button
                                        type="submit"
                                        class="inline-flex justify-center rounded-md bg-blue-100 px-4 py-2 text-sm font-medium text-blue-900 hover:bg-blue-200 focus:outline-none"
                                    >
                                        Create
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
import { useForm } from "@inertiajs/vue3";
import {
    TransitionRoot,
    TransitionChild,
    Dialog,
    DialogPanel,
    DialogTitle,
} from "@headlessui/vue";
const prop = defineProps(["isOpen", "categories"]);
const emit = defineEmits(["toggleModal"]);

const Project = useForm({
    name: null,
    link: null,
    category_id: null,
    photo: null,
});

function handleFileChange(event) {
    const file = event.target.files[0];
    if (file) {
        Project.photo = file;
        Project.photoPreview = URL.createObjectURL(file);
    }
}

function closeModal() {
    emit("toggleModal", false);
}

function CreateProject() {
    Project.post(`/projects`, {
        onSuccess: () => closeModal(),
        forceFormData: true,
        onError: (error) => console.log(error),
    });
}
</script>
