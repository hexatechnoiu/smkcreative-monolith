<script setup lang="ts">
import Navbar from '@/Components/V2/Navbar.vue';
import V2Layout from '@/Layouts/V2Layout.vue';
const props = defineProps({
    categories: {
        type: Object,
        required: true,
    },
    projects: {
        type: Object,
        required: true,
    },
});
</script>

<template>
    <V2Layout>
        <div class="px-[5vw] font-jakarta min-h-screen">
            <Navbar />

            <section>
                <div class="grid grid-cols-11">

                    <div class="col-span-5">
                        <div class="mb-8">
                            <h1 class="text-3xl font-semibold mb-3">Pengembangan Perangkat Lunak</h1>
                            <p>Membekali siswa dengan keterampilan teknis dan manajerial dalam pengembangan perangkat
                                lunak, mulai dari tahap perancangan hingga implementasi dan pemeliharaan.</p>
                        </div>

                        <div class="flex flex-col justify-center bg-pplg-blue p-7 mb-6 rounded-3xl text-white w-[70vh]">
                            <h5 class="text-md font-semibold mb-3">Proyek yang Dikembangkan</h5>
                            <div class="flex justify-between">
                                <div class="space-y-1">
                                    <span class="flex gap-2">
                                        <img src="assets/Check.svg" alt="" class="w-5">
                                        <p>Aplikasi Mobile</p>
                                    </span>
                                    <span class="flex gap-2">
                                        <img src="assets/Check.svg" alt="" class="w-5">
                                        <p>Aplikasi Desktop</p>
                                    </span>
                                    <span class="flex gap-2">
                                        <img src="assets/Check.svg" alt="" class="w-5">
                                        <p>Sistem Informasi Web</p>
                                    </span>
                                </div>
                                <div class="space-y-1">
                                    <span class="flex gap-2">
                                        <img src="assets/Check.svg" alt="" class="w-5">
                                        <p>Digital Printing</p>
                                    </span>
                                    <span class="flex gap-2">
                                        <img src="assets/Check.svg" alt="" class="w-5">
                                        <p>Content Creator</p>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="font-caveat font-bold text-3xl">
                            <h3 class="text-black mb-4">Teknologi yang Digunakan</h3>
                            <div class="flex flex-wrap gap-2">
                                <img src="assets/icon-tech/html.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/css.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/javascript.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/tailwind-css.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/php-icon 1.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/laravel.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/vue-js.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/node-js.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/bootstrap.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/vite.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/kotlin.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/flutter.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/react.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/c.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/java.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/mysql.svg" alt="" class="h-[3.8rem]">
                            </div>
                        </div>
                    </div>

                    <div class="col-span-1 flex justify-center">
                        <div class="w-[1px] h-full bg-black opacity-30"></div>
                    </div>

                    <div class="col-span-5">
                        <div class="mb-8">
                            <h1 class="text-2xl font-semibold mb-3">Komponen Pembelajaran</h1>
                        </div>

                        <!-- Item -->
                        <div class="flex gap-x-5 ms-1">
                            <!-- Icon -->
                            <div
                                class="relative last:after:hidden after:absolute after:top-8 after:bottom-0 after:start-4 after:w-px after:-translate-x-[0.5px] after:bg-pplg-yellow-darken">
                                <div class="relative z-10 size-8 flex justify-center items-center">
                                    <span
                                        class="flex flex-shrink-0 justify-center items-center size-8 border border-pplg-yellow-darken text-pplg-yellow-darken font-semibold text-xs uppercase rounded-full">
                                        1
                                    </span>
                                </div>
                            </div>
                            <!-- End Icon -->

                            <!-- Right Content -->
                            <div class="grow pt-0.5 pb-1">
                                <div class="text-sm lg:text-base">
                                    <p class="font-semibold">Analisis Kebutuhan</p>
                                    <span>Mengidentifikasi kebutuhan klien atau pengguna untuk menentukan fitur
                                        aplikasi.</span>
                                </div>
                            </div>
                            <!-- End Right Content -->
                        </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="flex gap-x-5 ms-1">
                            <!-- Icon -->
                            <div
                                class="relative last:after:hidden after:absolute after:top-8 after:bottom-0 after:start-4 after:w-px after:-translate-x-[0.5px] after:bg-pplg-yellow-darken">
                                <div class="relative z-10 size-8 flex justify-center items-center">
                                    <span
                                        class="flex flex-shrink-0 justify-center items-center size-8 border border-pplg-yellow-darken text-pplg-yellow-darken font-semibold text-xs uppercase rounded-full">
                                        2
                                    </span>
                                </div>
                            </div>
                            <!-- End Icon -->

                            <!-- Right Content -->
                            <div class="grow pt-0.5 pb-1">
                                <div class="text-sm lg:text-base">
                                    <p class="font-semibold">Perancangan Sistem</p>
                                    <span>Membuat desain arsitektur aplikasi menggunakan tools seperti UML, Flowchart,
                                        atau ERD.</span>
                                </div>
                            </div>
                            <!-- End Right Content -->
                        </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="flex gap-x-5 ms-1">
                            <!-- Icon -->
                            <div
                                class="relative last:after:hidden after:absolute after:top-8 after:bottom-0 after:start-4 after:w-px after:-translate-x-[0.5px] after:bg-pplg-yellow-darken">
                                <div class="relative z-10 size-8 flex justify-center items-center">
                                    <span
                                        class="flex flex-shrink-0 justify-center items-center size-8 border border-pplg-yellow-darken text-pplg-yellow-darken font-semibold text-xs uppercase rounded-full">
                                        3
                                    </span>
                                </div>
                            </div>
                            <!-- End Icon -->

                            <!-- Right Content -->
                            <div class="grow pt-0.5 pb-1">
                                <div class="text-sm lg:text-base">
                                    <p class="font-semibold">Pengembangan Aplikasi</p>
                                    <span>Pengembangan aplikasi mencakup pemrograman berbasis desktop, aplikasi berbasis
                                        web, dan aplikasi mobile.</span>
                                </div>
                            </div>
                            <!-- End Right Content -->
                        </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="flex gap-x-5 ms-1">
                            <!-- Icon -->
                            <div
                                class="relative last:after:hidden after:absolute after:top-8 after:bottom-0 after:start-4 after:w-px after:-translate-x-[0.5px] after:bg-pplg-yellow-darken">
                                <div class="relative z-10 size-8 flex justify-center items-center">
                                    <span
                                        class="flex flex-shrink-0 justify-center items-center size-8 border border-pplg-yellow-darken text-pplg-yellow-darken font-semibold text-xs uppercase rounded-full">
                                        4
                                    </span>
                                </div>
                            </div>
                            <!-- End Icon -->

                            <!-- Right Content -->
                            <div class="grow pt-0.5 pb-1">
                                <div class="text-sm lg:text-base">
                                    <p class="font-semibold">Pengujian dan Debugging</p>
                                    <span>Pengembangan aplikasi mencakup pemrograman berbasis desktop, aplikasi berbasis
                                        web, dan aplikasi mobile.</span>
                                </div>
                            </div>
                            <!-- End Right Content -->
                        </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="flex gap-x-5 ms-1">
                            <!-- Icon -->
                            <div
                                class="relative last:after:hidden after:absolute after:top-8 after:bottom-0 after:start-4 after:w-px after:-translate-x-[0.5px] after:bg-transparent">
                                <div class="relative z-10 size-8 flex justify-center items-center">
                                    <span
                                        class="flex flex-shrink-0 justify-center items-center size-8 border border-pplg-yellow-darken text-pplg-yellow-darken font-semibold text-xs uppercase rounded-full">
                                        5
                                    </span>
                                </div>
                            </div>
                            <!-- End Icon -->

                            <!-- Right Content -->
                            <div class="grow pt-0.5 pb-1">
                                <div class="text-sm lg:text-base">
                                    <p class="font-semibold">Pemeliharaan</p>
                                    <span>Memberikan layanan pasca peluncuran aplikasi, seperti update fitur dan
                                        perbaikan bug.</span>
                                </div>
                            </div>
                            <!-- End Right Content -->
                        </div>
                        <!-- End Item -->

                    </div>
                </div>
            </section>

            <section class="my-28">
                <div class="grid grid-cols-11">

                    <div class="col-span-5">
                        <div class="mb-8">
                            <h1 class="text-2xl font-semibold mb-3">Komponen Pembelajaran</h1>
                        </div>

                        <!-- Item -->
                        <div class="flex gap-x-5 ms-1">
                            <!-- Icon -->
                            <div
                                class="relative last:after:hidden after:absolute after:top-8 after:bottom-0 after:start-4 after:w-px after:-translate-x-[0.5px] after:bg-pplg-yellow-darken">
                                <div class="relative z-10 size-8 flex justify-center items-center">
                                    <span
                                        class="flex flex-shrink-0 justify-center items-center size-8 border border-pplg-yellow-darken text-pplg-yellow-darken font-semibold text-xs uppercase rounded-full">
                                        1
                                    </span>
                                </div>
                            </div>
                            <!-- End Icon -->

                            <!-- Right Content -->
                            <div class="grow pt-0.5 pb-1">
                                <div class="text-sm lg:text-base">
                                    <p class="font-semibold">Konsep dan Ideasi</p>
                                    <span>Membuat cerita gim yang diinginkan, perancangan karakter, dan penyusunan
                                        mekanika permainan.</span>
                                </div>
                            </div>
                            <!-- End Right Content -->
                        </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="flex gap-x-5 ms-1">
                            <!-- Icon -->
                            <div
                                class="relative last:after:hidden after:absolute after:top-8 after:bottom-0 after:start-4 after:w-px after:-translate-x-[0.5px] after:bg-pplg-yellow-darken">
                                <div class="relative z-10 size-8 flex justify-center items-center">
                                    <span
                                        class="flex flex-shrink-0 justify-center items-center size-8 border border-pplg-yellow-darken text-pplg-yellow-darken font-semibold text-xs uppercase rounded-full">
                                        2
                                    </span>
                                </div>
                            </div>
                            <!-- End Icon -->

                            <!-- Right Content -->
                            <div class="grow pt-0.5 pb-1">
                                <div class="text-sm lg:text-base">
                                    <p class="font-semibold">Desain Gim</p>
                                    <span>Menggunakan tools seperti Blender, Photoshop, dan Illustrator untuk desain 2D
                                        dan 3D.</span>
                                </div>
                            </div>
                            <!-- End Right Content -->
                        </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="flex gap-x-5 ms-1">
                            <!-- Icon -->
                            <div
                                class="relative last:after:hidden after:absolute after:top-8 after:bottom-0 after:start-4 after:w-px after:-translate-x-[0.5px] after:bg-pplg-yellow-darken">
                                <div class="relative z-10 size-8 flex justify-center items-center">
                                    <span
                                        class="flex flex-shrink-0 justify-center items-center size-8 border border-pplg-yellow-darken text-pplg-yellow-darken font-semibold text-xs uppercase rounded-full">
                                        3
                                    </span>
                                </div>
                            </div>
                            <!-- End Icon -->

                            <!-- Right Content -->
                            <div class="grow pt-0.5 pb-1">
                                <div class="text-sm lg:text-base">
                                    <p class="font-semibold">Pemrograman Gim</p>
                                    <span>Membuat logika permainan menggunakan game engine seperti Unity atau Unreal
                                        Engine.</span>
                                </div>
                            </div>
                            <!-- End Right Content -->
                        </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="flex gap-x-5 ms-1">
                            <!-- Icon -->
                            <div
                                class="relative last:after:hidden after:absolute after:top-8 after:bottom-0 after:start-4 after:w-px after:-translate-x-[0.5px] after:bg-transparent">
                                <div class="relative z-10 size-8 flex justify-center items-center">
                                    <span
                                        class="flex flex-shrink-0 justify-center items-center size-8 border border-pplg-yellow-darken text-pplg-yellow-darken font-semibold text-xs uppercase rounded-full">
                                        4
                                    </span>
                                </div>
                            </div>
                            <!-- End Icon -->

                            <!-- Right Content -->
                            <div class="grow pt-0.5 pb-1">
                                <div class="text-sm lg:text-base">
                                    <p class="font-semibold">Pengujian Gim</p>
                                    <span>Mengidentifikasi bug dan meningkatkan pengalaman pengguna (UX).</span>
                                </div>
                            </div>
                            <!-- End Right Content -->
                        </div>
                        <!-- End Item -->

                    </div>

                    <div class="col-span-1 flex justify-center">
                        <div class="w-[1px] h-full bg-black opacity-30"></div>
                    </div>

                    <div class="col-span-5">
                        <div class="mb-8">
                            <h1 class="text-3xl font-semibold mb-3">Pengembangan Gim</h1>
                            <p>Melatih siswa untuk menciptakan gim interaktif, kreatif, dan fungsional, baik untuk
                                hiburan maupun edukasi.</p>
                        </div>

                        <div class="flex flex-col justify-center bg-pplg-blue p-7 mb-6 rounded-3xl text-white w-[70vh]">
                            <h5 class="text-md font-semibold mb-3">Proyek Gim Unggulan</h5>
                            <div class="flex justify-between">
                                <div class="space-y-1">
                                    <span class="flex gap-2">
                                        <img src="assets/Check.svg" alt="" class="w-5">
                                        <p>Gim Edukasi dan Teka-Teki</p>
                                    </span>
                                    <span class="flex gap-2">
                                        <img src="assets/Check.svg" alt="" class="w-5">
                                        <p>Gim Aksi dan Petualangan</p>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="font-caveat font-bold text-3xl">
                            <h3 class="text-black mb-4">Teknologi yang Digunakan</h3>
                            <div class="flex flex-wrap gap-2">
                                <img src="assets/icon-tech/unity.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/blender.svg" alt="" class="h-[3.8rem]">
                                <img src="assets/icon-tech/gdevelop.svg" alt="" class="h-[3.8rem]">
                            </div>
                        </div>
                    </div>

                </div>
            </section>

            <section class="bg-pplg-blue p-16 mx-[-5vw] px-[5vw]">
                <h1 class="text-3xl text-white text-center font-semibold mb-16">Proyek Siswa</h1>
                <div class="flex flex-wrap justify-center gap-8">
                    <a v-for="project in props.projects" :href="project.link" class="bg-white h-[320px] w-[380px] rounded-3xl p-4">
                        <img :src="project.photo" :alt="project.name"
                            class="w-full h-[12rem] rounded-2xl object-cover shadow-sm mb-8">
                        <div class="px-4 space-y-2">
                            <div class="bg-pplg-yellow-darken rounded-full py-0.5 px-3 inline-block">
                                <p class="text-sm">{{ project.category.name }}</p>
                            </div>
                            <h2 class="font-semibold text-lg">{{ project.name }}</h2>
                        </div>
                    </a>
                </div>
            </section>

        </div>
    </V2Layout>
</template>