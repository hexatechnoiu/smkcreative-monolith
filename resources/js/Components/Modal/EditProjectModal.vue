<template>
    <Modal :title="'Edit ' + tempProject.name" v-if="prop.isOpen" :isOpen="prop.isOpen"
        @toggle-modal="v => emit('toggleModal', v)">

        <form @submit.prevent="updateProject">
            <div v-if="status" :class="statusClass" class="p-2 my-3 rounded text-center">
                {{ status }}
            </div>

            <div class="grid gap-4 mt-2">
                <!-- Name Input -->
                <!-- <div>
                                <label
                                    for="name"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300"
                                    >Name</label
                                >
                                <input
                                    type="text"
                                    name="name"
                                    id="name"
                                    v-model="tempProject.name"
                                    class="bg-gray-50 dark:bg-gray-700 border border-gray-300 dark:border-gray-600 text-gray-900 dark:text-gray-200 text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5"
                                    placeholder="Project Name"
                                />
                            </div> -->
                <TextInput name="name" @model="(v) => tempProject.name = v" :prevalue="tempProject.name"
                    placeholder="Project Name" label="Name" />
                <!-- Category Select -->
                <!-- <div>
                    <label for="category"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Category</label>
                    <select name="category" id="category" v-model="tempProject.category.id"
                        class="bg-gray-50 dark:bg-gray-700 border border-gray-300 dark:border-gray-600 text-gray-900 dark:text-gray-200 text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5">
                        <option v-for="cat in prop.categories" :key="cat.id" :value="cat.id">
                            {{ cat.name }}
                        </option>
                    </select>
                </div> -->
                <SelectInput name="category" :data="prop.categories" :selected="tempProject.category.id"
                    label="Category" @model="v => tempProject.category.id = v" />
                <!-- Link Input -->
                <!-- <div>
                                <label for="link"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Link</label>
                                <input type="url" name="link" id="link" v-model="tempProject.link"
                                    class="bg-gray-50 dark:bg-gray-700 border border-gray-300 dark:border-gray-600 text-gray-900 dark:text-gray-200 text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5"
                                    placeholder="https://example.com" />
                            </div> -->
                <TextInput name="link" @model="(v) => tempProject.link = v" :prevalue="tempProject.link"
                    placeholder="https://example.com" label="Link" />
                <!-- Photo Input -->
                <div>
                    <label for="photo"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Photo</label>
                    <img v-if="tempProject.photoPreview" :src="tempProject.photoPreview"
                        class="rounded-lg mb-2 max-h-40 object-cover" alt="Project Preview" />
                    <input type="file" name="photo" id="photo" @change="handleFileChange"
                        class="bg-gray-50 dark:bg-gray-700 border border-gray-300 dark:border-gray-600 text-gray-900 dark:text-gray-200 text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5" />
                </div>
            </div>

            <!-- Action Buttons -->
            <div class="mt-4 flex gap-2 justify-end">
                <button type="button"
                    class="btn-cancel"
                    @click="closeModal">
                    Cancel
                </button>
                <button type="submit"
                    class="btn-submit"
                    :class="{
                        'opacity-50 cursor-not-allowed':
                            tempProject.processing,
                    }" :disabled="tempProject.processing">
                    Update
                </button>
            </div>
        </form>
    </Modal>

</template>

<script setup>
import { ref, onMounted } from "vue";
import { useForm } from "@inertiajs/vue3";
import TextInput from "../TextInput.vue";
import Modal from "./Modal.vue";
import SelectInput from "../SelectInput.vue";

const prop = defineProps(["project", "isOpen", "categories"]);
const emit = defineEmits(["toggleModal"]);

const tempProject = useForm({
    name: null,
    link: null,
    category: { id: null },
    photo: null,
});

const status = ref(null);

const statusClass = ref("");

onMounted(() => {
    Object.assign(tempProject, { ...prop.project });
    tempProject.photo = null;
    status.value = null;
});

function handleFileChange(event) {
    const file = event.target.files[0];
    if (file) {
        tempProject.photo = file;
        tempProject.photoPreview = URL.createObjectURL(file);
    }
}

function closeModal() {
    emit("toggleModal", false);
}

function updateProject() {
    status.value = null;
    statusClass.value = "";
    tempProject.transform((data) => ({ ...data, _method: "PUT" }));
    tempProject.post(`/projects/${prop.project.id}`, {
        onSuccess: () => {
            status.value = "Project updated successfully!";
            statusClass.value =
                "bg-green-100 text-green-800 dark:bg-indigo-800 dark:text-indigo-100";
            setTimeout(closeModal, 1500);
        },
        onError: (error) => {
            status.value = "Failed to update the project.";
            statusClass.value =
                "bg-red-100 text-red-800 dark:bg-indigo-900 dark:text-indigo-100";
            console.error(error);
        },
    });
}
</script>
