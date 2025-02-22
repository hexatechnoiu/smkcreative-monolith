<template>
    <Modal title="Add new projects" v-if="prop.isOpen" :isOpen="prop.isOpen"
    @toggle-modal=" () => emit('toggleModal', false)">
        <form @submit.prevent="CreateProject">
            <div class="grid mt-2">
                <!-- <div class="my-1.5">
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
                                    </div> -->
                <TextInput name="name" @model="(v) => Project.name = v" prevalue="" placeholder="Project Name"
                    label="Name" />
                <!-- <div class="my-1.5">
                    <label for="category" class="block mb-2 text-sm font-medium text-gray-900">Kategori</label>
                    <select name="category" id="category" v-model="Project.category_id"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                        placeholder="Project Name">
                        <option v-for="cat in prop.categories" :key="cat.id" :value="cat.id">
                            {{ cat.name }}
                        </option>
                    </select>
                </div> -->
                <SelectInput name="category" :data="prop.categories" :selected="Project.category_id" label="Category"
                    @model="v => Project.category_id = v" />
                <!-- <div class="my-1.5">
                    <label for="link" class="block mb-2 text-sm font-medium text-gray-900">Link</label>
                    <input type="url" name="link" id="link" v-model="Project.link"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                        placeholder="https://example.com" />
                </div> -->
                <TextInput name="link" @model="(v) => Project.link = v" prevalue="" placeholder="https://example.com"
                    label="Link" />
                <div class="my-1.5">
                    <label for="photo" class="block mb-2 text-sm font-medium text-gray-900">Foto</label>
                    <img v-if="Project.photoPreview" :src="Project.photoPreview" class="rounded-lg mb-2"
                        alt="Project Preview" />
                    <input type="file" name="photo" id="photo" @change="handleFileChange"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" />
                </div>
            </div>
            <div class="mt-4 flex gap-2 justify-end">
                <button type="button"
                    class="btn-cancel"
                    @click="closeModal">
                    Cancel
                </button>
                <button type="submit"
                    class="btn-submit">
                    Create
                </button>
            </div>
        </form>
    </Modal>
</template>

<script setup>
import { useForm } from "@inertiajs/vue3";
import TextInput from "../TextInput.vue";
import Modal from "./Modal.vue";
import SelectInput from "../SelectInput.vue";
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
