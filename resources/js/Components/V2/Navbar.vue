<script setup lang="ts">
import { Link } from '@inertiajs/vue3';
import { ref } from 'vue';
const showMenu = ref(false);

</script>

<template>
    <nav
        class="flex items-center z-50 backdrop-blur-sm justify-between flex-wrap py-4 sticky top-0 bg-white/85  px-[5vw] mx-[-5vw]">
        <img draggable="false" src="assets/Logo PPLG.svg" class="h-16" alt="Logo PPLG" />
        <ul class="flex items-center gap-10">
            <li>
                <a href="/" class="text-black hover:text-pplg-yellow duration-[400ms]">Beranda</a>
            </li>
            <li>
                <a href="/profile" class="text-black hover:text-pplg-yellow duration-[400ms]">Profil</a>
            </li>
            <li>
                <a href="/service-program" class="text-black hover:text-pplg-yellow duration-[400ms]">Program
                    dan
                    Layanan</a>
            </li>
            <li>
                <a href="/contact-us" class="text-black hover:text-pplg-yellow duration-[400ms]">Kontak</a>
            </li>
            <li>

                <button @click="() => showMenu = !showMenu"
                    class="inline-flex gap-1 text-black hover:text-pplg-yellow duration-[400ms]">
                    Lainnya
                    <span>
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                            fill="currentColor">
                            <path d="M480-344 240-584l56-56 184 184 184-184 56 56-240 240Z" />
                        </svg>
                    </span>
                </button>
            </li>
        </ul>

        <Link href="/login"
            class="bg-pplg-yellow hover:bg-pplg-yellow-darken duration-[400ms] text-md font-semibold px-8 py-2 rounded-full">
        Masuk
        </Link>
    </nav>
</template>