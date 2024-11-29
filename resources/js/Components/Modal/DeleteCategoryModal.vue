<template>
    <TransitionRoot appear :show="prop.isOpen" as="template">
        <Dialog as="div" @close="closeModal" class="relative z-10">
            <TransitionChild as="template" enter="duration-300 ease-out" enter-from="opacity-0" enter-to="opacity-100"
                leave="duration-200 ease-in-out" leave-from="opacity-100" leave-to="opacity-0">
                <div class="fixed inset-0 backdrop-blur-sm bg-black/25" />
            </TransitionChild>

            <div class="fixed inset-0 overflow-y-auto">
                <div class="flex min-h-full items-center justify-center p-4 text-center">
                    <TransitionChild as="template" enter="duration-300 ease-out" enter-from="opacity-0 scale-95"
                        enter-to="opacity-100 scale-100" leave="duration-200 ease-in" leave-from="opacity-100 scale-100"
                        leave-to="opacity-0 scale-95">
                        <DialogPanel
                            class="w-full max-w-md inline-flex flex-col gap-5 transform overflow-hidden rounded-2xl bg-white p-6 text-left align-middle shadow-xl transition-all">
                            <div class="aspect-square text-red bg-red-600/25 text-red-600 rounded-full p-5 inline-flex justify-center items-center self-center">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 -960 960 960" class="w-8 h-8"
                                     fill="currentColor">
                                    <path
                                        d="m40-120 440-760 440 760H40Zm138-80h604L480-720 178-200Zm302-40q17 0 28.5-11.5T520-280q0-17-11.5-28.5T480-320q-17 0-28.5 11.5T440-280q0 17 11.5 28.5T480-240Zm-40-120h80v-200h-80v200Zm40-100Z" />
                                </svg>
                            </div>
                            <DialogTitle as="h3" class="text-lg text-center font-bold leading-6 text-gray-900">
                                Delete Project
                            </DialogTitle>
                            <p class="text-center">You're going to delete the <span class="bg-gray-200 p-0.5 rounded-md">{{ project.name
                                    }}</span> project. Are you sure?</p>
                            <div class="flex gap-4">
                                <button
                                    class="w-full rounded-md bg-gray-200 px-4 py-2 text-sm font-medium text-gray-900 hover:bg-gray-300 focus:outline-none"
                                    @click="closeModal">
                                    No, Keep It.
                                </button>
                                <button @click="SureDelete()"
                                    class="w-full rounded-md bg-red-600 px-4 py-2 text-sm font-medium text-white hover:bg-red-800 focus:outline-none">
                                    Yes, Delete!
                                </button>
                            </div>
                        </DialogPanel>
                    </TransitionChild>
                </div>
            </div>
        </Dialog>
    </TransitionRoot>
</template>

<script setup>
import {
    TransitionRoot,
    TransitionChild,
    Dialog,
    DialogPanel,
    DialogTitle,
} from "@headlessui/vue";
import { router } from "@inertiajs/vue3";
const prop = defineProps(["project", "isOpen"]);
const emit = defineEmits(["toggleModal"]);



function closeModal() {
    emit("toggleModal", false);
}

function SureDelete() {
    console.log("Delete action triggered");
    router.delete(`/projects/${prop.project.id}`, {
        onSuccess: () => closeModal(),
        onError: (error) => console.log(error),
    });
}
</script>
