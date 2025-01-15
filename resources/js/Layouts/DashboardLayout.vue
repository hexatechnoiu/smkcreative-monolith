<script setup>
import NavButton from "@/Components/NavButton.vue";
import NavLink from "@/Components/NavLink.vue";
import { router } from "@inertiajs/vue3";
import { ref } from "vue";
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
                    <NavLink :active="currPath == '/dashboard/projects'" href="/dashboard/projects" name="Projects">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                            fill="currentColor">
                            <path
                                d="M240-40v-329L110-580l185-300h370l185 300-130 211v329l-240-80-240 80Zm80-111 160-53 160 53v-129H320v129Zm20-649L204-580l136 220h280l136-220-136-220H340Zm98 383L296-558l57-57 85 85 169-170 57 56-226 227ZM320-280h320-320Z" />
                        </svg>
                    </NavLink>
                    <NavLink :active="currPath == '/dashboard/categories'" href="/dashboard/categories"
                        name="Categories">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                            fill="currentColor">
                            <path
                                d="m260-520 220-360 220 360H260ZM700-80q-75 0-127.5-52.5T520-260q0-75 52.5-127.5T700-440q75 0 127.5 52.5T880-260q0 75-52.5 127.5T700-80Zm-580-20v-320h320v320H120Zm580-60q42 0 71-29t29-71q0-42-29-71t-71-29q-42 0-71 29t-29 71q0 42 29 71t71 29Zm-500-20h160v-160H200v160Zm202-420h156l-78-126-78 126Zm78 0ZM360-340Zm340 80Z" />
                        </svg>
                    </NavLink>
                    <NavLink :active="currPath == '/dashboard/users'" href="/dashboard/users" name="Users">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                            fill="currentColor">
                            <path
                                d="M40-160v-112q0-34 17.5-62.5T104-378q62-31 126-46.5T360-440q66 0 130 15.5T616-378q29 15 46.5 43.5T680-272v112H40Zm720 0v-120q0-44-24.5-84.5T666-434q51 6 96 20.5t84 35.5q36 20 55 44.5t19 53.5v120H760ZM360-480q-66 0-113-47t-47-113q0-66 47-113t113-47q66 0 113 47t47 113q0 66-47 113t-113 47Zm400-160q0 66-47 113t-113 47q-11 0-28-2.5t-28-5.5q27-32 41.5-71t14.5-81q0-42-14.5-81T544-792q14-5 28-6.5t28-1.5q66 0 113 47t47 113ZM120-240h480v-32q0-11-5.5-20T580-306q-54-27-109-40.5T360-360q-56 0-111 13.5T140-306q-9 5-14.5 14t-5.5 20v32Zm240-320q33 0 56.5-23.5T440-640q0-33-23.5-56.5T360-720q-33 0-56.5 23.5T280-640q0 33 23.5 56.5T360-560Zm0 320Zm0-400Z" />
                        </svg>
                    </NavLink>
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
