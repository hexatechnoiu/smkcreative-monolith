<script setup>

import { Head } from "@inertiajs/vue3";
import { ref } from "vue";
import { MenuButton, MenuItem, MenuItems, TransitionChild, Menu } from "@headlessui/vue";
import DashboardLayout from "@/Layouts/DashboardLayout.vue";
import EditCategoryModal from "@/Components/Modal/EditCategoryModal.vue";
import DeleteCategoryModal from "@/Components/Modal/DeleteCategoryModal.vue";
import CreateCategoryModal from "@/Components/Modal/CreateCategoryModal.vue";

const createModalOpen = ref(false);
const updateModalOpen = ref(false);
const deleteModalOpen = ref(false);

const sp = ref(null);
defineProps({
  categories: {
    type: Array,
    required: true,
  },
});
</script>
<template>

  <Head title="Dashboard" />
  <DashboardLayout>
    <div>
      <div class="flex text-primary justify-start p-1">
        <button @click="createModalOpen = true" class="rounded-full hover:bg-white/25 flex py-2 px-4 gap-1 group transition-opacity duration-200 dark:text-indigo-100">
          <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
            fill="currentColor">
            <path d="M440-440H200v-80h240v-240h80v240h240v80H520v240h-80v-240Z" />
          </svg>
          <span
            class=" opacity-0 transform -translate-x-1 group-hover:opacity-100 group-hover:translate-x-0 transition-all duration-300">
            Create
          </span>
        </button>
      </div>
      <div class="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
        <div v-for="category in categories" :key="category.id">
          <div class="rounded-xl border bg-card text-card-foreground shadow dark:bg-white/5 dark:text-indigo-100 dark:border-0">
            <div class="flex flex-col space-y-1.5 p-2">
              <div style="position: relative; width: 100%; padding-bottom: 60%">
                <div style="position: absolute; inset: 0px">
                  <img :alt="category.name" loading="lazy" decoding="async" class="rounded-md object-cover"
                    sizes="100vw" :src="category.photo" style="
                      position: absolute;
                      height: 100%;
                      width: 100%;
                      inset: 0px;
                      color: transparent;
                    " />
                </div>
              </div>
            </div>
            <div class="flex justify-between">
              <div class="p-6 pt-0">
                <h3 class="font-semibold tracking-tight text-lg">
                  {{ category.name }}
                </h3>
                <p class="text-sm text-muted-foreground dark:text-violet-200">
                  {{ category.category.name }}
                </p>
              </div>
              <Menu as="div" class="relative inline-block text-left px-3">
                <div>
                  <MenuButton
                    class="inline-flex w-full justify-center rounded-full aspect-square p-3 text-sm font-medium text-gray-600 hover:bg-black/30 focus:outline-none focus-visible:ring-2 focus-visible:ring-white/75">
                    <svg xmlns="http://www.w3.org/2000/svg" class="min-w-[24px] aspect-square" viewBox="0 -960 960 960"
                      fill="currentColor">
                      <path
                        d="M480-160q-33 0-56.5-23.5T400-240q0-33 23.5-56.5T480-320q33 0 56.5 23.5T560-240q0 33-23.5 56.5T480-160Zm0-240q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm0-240q-33 0-56.5-23.5T400-720q0-33 23.5-56.5T480-800q33 0 56.5 23.5T560-720q0 33-23.5 56.5T480-640Z" />
                    </svg>
                  </MenuButton>
                </div>

                <transition enter-active-class="transition duration-100 ease-out"
                  enter-from-class="transform scale-95 opacity-0" enter-to-class="transform scale-100 opacity-100"
                  leave-active-class="transition duration-75 ease-in" leave-from-class="transform scale-100 opacity-100"
                  leave-to-class="transform scale-95 opacity-0">
                  <MenuItems
                    class="absolute z-10 right-0 mt-2 w-56 origin-top-right divide-y divide-gray-100 rounded-md bg-white shadow-lg ring-1 ring-black/5 focus:outline-none">
                    <div class="px-1 py-1">
                      <MenuItem v-slot="{ active }">
                      <button @click="() => {
                        sp = category;
                        updateModalOpen = true;
                      }
                        " :class="[
                          active
                            ? 'bg-violet-500 text-white'
                            : 'text-gray-900',
                          'group flex w-full items-center rounded-md px-2 py-2 text-sm',
                        ]">
                        <i :active="active" class="" aria-hidden="true" />
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 -960 960 960"
                          class="mr-2 h-5 w-5 text-gray-600 group-hover:text-violet-100 min-w-6" fill="currentColor">
                          <path
                            d="M200-200h57l391-391-57-57-391 391v57Zm-80 80v-170l528-527q12-11 26.5-17t30.5-6q16 0 31 6t26 18l55 56q12 11 17.5 26t5.5 30q0 16-5.5 30.5T817-647L290-120H120Zm640-584-56-56 56 56Zm-141 85-28-29 57 57-29-28Z" />
                        </svg>
                        Edit
                      </button>
                      </MenuItem>
                      <MenuItem v-slot="{ active }">
                      <button @click="() => {
                        sp = category;
                        deleteModalOpen = true;
                      }
                        " :class="[
                          active ? 'bg-red-500 text-white' : 'text-gray-900',
                          'group flex w-full items-center rounded-md px-2 py-2 text-sm',
                        ]">
                        <i :active="active" class="" aria-hidden="true" />
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 -960 960 960"
                          class="mr-2 h-5 w-5 text-gray-600 group-hover:text-violet-100 min-w-6" fill="currentColor">
                          <path
                            d="m376-300 104-104 104 104 56-56-104-104 104-104-56-56-104 104-104-104-56 56 104 104-104 104 56 56Zm-96 180q-33 0-56.5-23.5T200-200v-520h-40v-80h200v-40h240v40h200v80h-40v520q0 33-23.5 56.5T680-120H280Zm400-600H280v520h400v-520Zm-400 0v520-520Z" />
                        </svg>
                        Delete
                      </button>
                      </MenuItem>
                    </div>
                  </MenuItems>
                </transition>
              </Menu>
            </div>
          </div>
        </div>
      </div>
    </div>
    <EditCategoryModal v-if="updateModalOpen" :isOpen="updateModalOpen" :category="sp"
      @toggle-modal="(value) => (updateModalOpen = value)" :categories />
    <DeleteCategoryModal v-if="deleteModalOpen" :isOpen="deleteModalOpen" :category="sp"
      @toggle-modal="(value) => (deleteModalOpen = value)" :categories />
    <CreateCategoryModal v-if="createModalOpen" :isOpen="createModalOpen" 
      @toggle-modal="(value) => (createModalOpen = value)" :categories />
  </DashboardLayout>
</template>
