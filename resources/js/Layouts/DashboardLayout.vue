<script setup>
import NavButton from "@/Components/NavButton.vue";
import NavLink from "@/Components/NavLink.vue";
import { router } from "@inertiajs/vue3";
import { ref } from "vue";
import { DashboardMenuItems } from "@/data";
const sidebar_shown = ref(false);
const logout = () => router.post("/logout");
const currPath = ref(window.location.pathname);
document.body.classList.add(
    "text-indigo-800",
    "bg-indigo-50",
    "to-white",
    "dark:bg-indigo-950",
);
</script>

<template>
    <main class="min-h-screen w-screen">
        <button data-drawer-target="default-sidebar" data-drawer-toggle="default-sidebar"
            aria-controls="default-sidebar" type="button" @click.prevent="sidebar_shown = !sidebar_shown"
            class="inline-flex items-center p-2 mt-2 ms-3 text-sm text-indigo-500 rounded-lg sm:hidden hover:bg-indigo-100 focus:outline-none focus:ring-2 focus:ring-indigo-200 dark:text-indigo-400 dark:hover:bg-indigo-700 dark:focus:ring-indigo-600">
            <span class="sr-only">Open sidebar</span>
            <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20"
                xmlns="http://www.w3.org/2000/svg">
                <path clip-rule="evenodd" fill-rule="evenodd"
                    d="M2 4.75A.75.75 0 012.75 4h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 4.75zm0 10.5a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5a.75.75 0 01-.75-.75zM2 10a.75.75 0 01.75-.75h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 10z">
                </path>
            </svg>
        </button>

        <aside id="default-sidebar" :class="'fixed top-0 left-0 z-20 w-64 h-screen transition-transform -translate-x-full sm:translate-x-0 ' +
            (sidebar_shown ? 'translate-x-0' : '')
            " aria-label="Sidebar">
            <div class="h-full bg-indigo-100 dark:bg-indigo-800 md:dark:bg-indigo-800/10 px-3 py-4 overflow-y-auto">
                <ul class="space-y-2 font-medium">
                    <li class="bg-indigo-200 dark:text-white dark:bg-slate-50/10 p-2 rounded-lg">
                        <p class="line-clamp-1 font-semibold">
                            Hello {{ $page.props.auth.user.name }}!
                            <!-- Hello Muhammad Azfa Salman Akbar! -->
                        </p>
                        <p class="text-sm dark:text-indigo-300">
                            Hope you have a great day!
                        </p>
                    </li>
                    <li class="md:hidden" @click="sidebar_shown = !sidebar_shown">
                        <button
                            class="flex w-full items-center p-2 text-indigo-900 rounded-lg dark:text-white hover:bg-indigo-100 dark:hover:bg-indigo-700 group">
                            <svg class="w-5 h-5 text-indigo-500 transition duration-75 dark:text-indigo-400 group-hover:text-indigo-900 dark:group-hover:text-white"
                                xmlns="http://www.w3.org/2000/svg" viewBox="0 -960 960 960" fill="currentColor">
                                <path
                                    d="M120-240v-80h520v80H120Zm664-40L584-480l200-200 56 56-144 144 144 144-56 56ZM120-440v-80h400v80H120Zm0-200v-80h520v80H120Z" />
                            </svg>

                            <span class="ms-3">Hide</span>
                        </button>
                    </li>

                    <template v-for="menu in DashboardMenuItems">
                        <NavLink :active="currPath == menu.path" :href="menu.path" :name="menu.name">
                            <span v-html="menu.icon" />
                        </NavLink>
                    </template>
                    <NavButton @on-click="logout" name="Logout">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                            fill="currentColor">
                            <path
                                d="M200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h280v80H200v560h280v80H200Zm440-160-55-58 102-102H360v-80h327L585-622l55-58 200 200-200 200Z" />
                        </svg>
                    </NavButton>
                </ul>
            </div>
        </aside>

        <div class="p-4 sm:ml-64 rounded">
            <slot />
        </div>
    </main>
</template>
