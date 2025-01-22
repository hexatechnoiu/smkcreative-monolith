<template>
    <link rel="stylesheet" href="style.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:ital,wght@0,200..800;1,200..800&display=swap"
        rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&display=swap" rel="stylesheet" />
    <div class="px-[5vw] font-jakarta w-screen h-screen">
        <nav class="flex items-center justify-between flex-wrap py-6">
            <img src="assets/Logo PPLG.svg" class="h-16" alt="Logo PPLG" />
            <ul class="flex items-center gap-10">
                <li>
                    <a href="/" class="text-black hover:text-pplg-yellow duration-[400ms]">Beranda</a>
                </li>
                <li>
                    <a href="/profile" class="text-black hover:text-pplg-yellow duration-[400ms]">Profil</a>
                </li>
                <li>
                    <a href="/service-program" class="text-black hover:text-pplg-yellow duration-[400ms]">Program dan
                        Layanan</a>
                </li>
                <li>
                    <a href="/contact-us" class="text-black hover:text-pplg-yellow duration-[400ms]">Kontak</a>
                </li>
                <li>
                    <button class="inline-flex gap-1 text-black hover:text-pplg-yellow duration-[400ms]">
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

            <Link href="/login" class="bg-[#FFF200] text-md font-semibold px-8 py-2 rounded-full">
            Masuk
            </Link>
        </nav>

        <section class="flex justify-between mt-12">
            <div class="w-1/2 flex flex-col items-start justify-center">
                <h1 class="text-5xl font-bold mb-4">
                    Pengembangan Perangkat <br />Lunak dan Gim <br />SMKN 2 Sumedang
                </h1>
                <p class="text-md mb-8">
                    Pengembangan Perangkat Lunak dan Gim (PPLG) adalah salah satu
                    kompetensi keahlian dalam bidang Teknologi Komputer dan Informatika
                    yang secara khusus mempelajari tentang pemrograman komputer mulai dari
                    perancangan, pembuatan, pemeliharaan dan juga proses manajemennya.
                </p>
                <a href="#tentang" class="bg-[#FFF200] text-md font-semibold px-8 py-2 rounded-full">
                    Jelajahi
                </a>
            </div>
            <div class="w-1/2 flex justify-end">
                <img src="assets/Aktor.svg" alt="Aktor" class="h-[60vh]" />
            </div>
        </section>

        <section class="flex justify-between mt-32" id="tentang">
            <div class="w-1/2">
                <h3 class="font-caveat text-pplg-yellow-darken text-3xl font-bold">Tentang</h3>
                <h1 class="text-3xl font-bold mb-4">Teaching Factory PPLG</h1>
                <p class="text-md">
                    Teaching Factory (TEFA) adalah konsep pembelajaran yang
                    mengintegrasikan dunia pendidikan dengan dunia industri. Teaching
                    Factory PPLG diterapkan untuk memberikan pengalaman belajar berbasis
                    praktik nyata yang berorientasi pada standar industri IT. Program ini
                    bertujuan untuk menjembatani kesenjangan antara teori yang diajarkan
                    di kelas dan kebutuhan keterampilan di dunia kerja.
                </p>
            </div>
            <div class="w-1/2 flex justify-end">
                <img src="assets/About.svg" alt="" class="h-[45vh]" />
            </div>
        </section>

        <section class="mt-28">
            <div class="flex items-center flex-col mb-12">
                <h3 class="font-caveat text-pplg-yellow-darken text-3xl font-semibold mr-20">
                    Proses Pembelajaran
                </h3>
                <h1 class="text-3xl font-bold ml-10">Teaching Factory</h1>
            </div>

            <div class="flex gap-2 justify-between">
                <div class="flex items-center gap-4 flex-col w-1/4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="52" height="52" viewBox="0 0 52 52"
                        fill="currentColor" class="mx-auto">
                        <g clip-path="url(#clip0_37_102)">
                            <path
                                d="M36.9699 7.05685L40.5904 0.55685C40.8785 0.0325171 41.5415 -0.153816 42.0637 0.138684C42.5859 0.429017 42.7744 1.08768 42.4819 1.61202L38.8614 8.11202C38.6642 8.46735 38.2937 8.66885 37.9145 8.66885C37.7347 8.66885 37.5549 8.62335 37.388 8.53235C36.8659 8.24202 36.6774 7.58118 36.9699 7.05685ZM51.909 11.4509C51.6664 10.9027 51.0294 10.6579 50.4812 10.894L43.9812 13.7562C43.433 13.9967 43.1839 14.638 43.4244 15.184C43.6042 15.5914 44.0007 15.8319 44.4167 15.8319C44.5619 15.8319 44.7114 15.8015 44.8522 15.7409L51.3522 12.8787C51.9004 12.6382 52.1495 11.9969 51.909 11.4509ZM13.1365 8.10985C13.3337 8.46518 13.7042 8.66668 14.0834 8.66668C14.2632 8.66668 14.443 8.62118 14.6099 8.53018C15.132 8.23985 15.3205 7.58118 15.028 7.05685L11.4097 0.55685C11.1194 0.0325171 10.4585 -0.15165 9.93636 0.138684C9.4142 0.429017 9.2257 1.08768 9.5182 1.61202L13.1387 8.11202L13.1365 8.10985ZM8.01886 13.7562L1.51886 10.894C0.975029 10.66 0.333696 10.9005 0.091029 11.4509C-0.149471 11.9969 0.0996957 12.6382 0.647862 12.8787L7.14786 15.7409C7.2887 15.8015 7.4382 15.8319 7.58336 15.8319C7.99936 15.8319 8.39586 15.5914 8.5757 15.184C8.8162 14.638 8.56703 13.9967 8.01886 13.7562ZM43.3334 25.9979C43.3334 31.5944 40.6055 36.8745 36.036 40.1224C35.178 40.7334 34.6667 41.717 34.6667 42.7549V45.5C34.6667 49.0837 31.7504 52 28.1667 52H23.8334C20.1869 52 17.3334 49.0165 17.3334 45.2054V42.7527C17.3334 41.717 16.8155 40.729 15.9467 40.1115C10.6254 36.3155 7.90836 29.9152 8.8552 23.4044C9.9667 15.7755 16.3454 9.62435 24.0284 8.77502C29.0269 8.22035 33.8369 9.75002 37.5592 13.0802C41.2274 16.367 43.3334 21.073 43.3334 25.9979ZM32.5 45.4979V43.3312H19.5V45.2032C19.5 47.8422 21.3612 49.8312 23.8334 49.8312H28.1667C30.5565 49.8312 32.5 47.8877 32.5 45.4979ZM41.1667 25.9979C41.1667 21.6905 39.325 17.5695 36.114 14.6944C33.2952 12.1724 29.7635 10.8312 26.0217 10.8312C25.441 10.8312 24.856 10.8637 24.2645 10.9287C17.5479 11.6697 11.9687 17.0474 11.0002 23.7164C10.1704 29.419 12.5472 35.0264 17.2034 38.3457C18.187 39.0477 18.8739 40.0509 19.2249 41.1645H24.9167V30.2207C22.4467 29.718 20.5834 27.5297 20.5834 24.9145C20.5834 24.3165 21.0687 23.8312 21.6667 23.8312C22.2647 23.8312 22.75 24.3165 22.75 24.9145C22.75 26.7064 24.2082 28.1645 26 28.1645C27.7919 28.1645 29.25 26.7064 29.25 24.9145C29.25 24.3165 29.7354 23.8312 30.3334 23.8312C30.9314 23.8312 31.4167 24.3165 31.4167 24.9145C31.4167 27.5319 29.5534 29.718 27.0834 30.2207V41.1645H32.773C33.1219 40.053 33.8022 39.052 34.7794 38.3565C38.7812 35.5139 41.1667 30.8945 41.1667 25.9979Z"
                                fill="#FACC15" />
                        </g>
                        <defs>
                            <clipPath id="clip0_37_102">
                                <rect width="52" height="52" fill="white" />
                            </clipPath>
                        </defs>
                    </svg>
                    <div class="text-xl font-bold text-center">Identifikasi Proyek</div>
                    <div class="text-md text-center">
                        Sekolah bekerja sama dengan Mitra Industri untuk menentukan proyek
                        yang relevan dengan kebutuhan industri.
                    </div>
                </div>
                <img src="assets/Arrow 1.svg" alt="" class="h-6 mt-4" />
                <div class="flex items-center gap-4 flex-col w-1/4 pt-10">
                    <svg xmlns="http://www.w3.org/2000/svg" width="52" height="52" viewBox="0 0 52 52"
                        fill="currentColor">
                        <g clip-path="url(#clip0_37_114)">
                            <path
                                d="M29.25 15.1667C26.2621 15.1667 23.8333 17.5955 23.8333 20.5833C23.8333 23.5712 26.2621 26 29.25 26C32.2378 26 34.6666 23.5712 34.6666 20.5833C34.6666 17.5955 32.2378 15.1667 29.25 15.1667ZM29.25 23.8333C27.4581 23.8333 26 22.3752 26 20.5833C26 18.7915 27.4581 17.3333 29.25 17.3333C31.0418 17.3333 32.5 18.7915 32.5 20.5833C32.5 22.3752 31.0418 23.8333 29.25 23.8333ZM44.4167 21.6667C47.4045 21.6667 49.8333 19.2378 49.8333 16.25C49.8333 13.2622 47.4045 10.8333 44.4167 10.8333C41.4288 10.8333 39 13.2622 39 16.25C39 19.2378 41.4288 21.6667 44.4167 21.6667ZM44.4167 13C46.2085 13 47.6667 14.4582 47.6667 16.25C47.6667 18.0418 46.2085 19.5 44.4167 19.5C42.6248 19.5 41.1667 18.0418 41.1667 16.25C41.1667 14.4582 42.6248 13 44.4167 13ZM52 28.1667C52 25.7768 50.0565 23.8333 47.6667 23.8333H41.1667C38.7768 23.8333 36.8333 25.7768 36.8333 28.1667V41.1667H40.0833V52H42.25V41.1667H46.5833V52H48.75V41.1667H52V28.1667ZM49.8333 39H39V28.1667C39 26.9707 39.9706 26 41.1667 26H47.6667C48.8627 26 49.8333 26.9707 49.8333 28.1667V39ZM14.0833 19.5C11.0955 19.5 8.66665 21.9288 8.66665 24.9167C8.66665 27.9045 11.0955 30.3333 14.0833 30.3333C17.0711 30.3333 19.5 27.9045 19.5 24.9167C19.5 21.9288 17.0711 19.5 14.0833 19.5ZM14.0833 28.1667C12.2915 28.1667 10.8333 26.7085 10.8333 24.9167C10.8333 23.1248 12.2915 21.6667 14.0833 21.6667C15.8751 21.6667 17.3333 23.1248 17.3333 24.9167C17.3333 26.7085 15.8751 28.1667 14.0833 28.1667ZM34.6666 2.16667V10.8333H32.5V3.67033L19.4436 16.2283L14.2935 11.076L1.85031 23.517L0.318481 21.9852L14.2935 8.01017L19.474 13.1928L30.9378 2.16667H23.8333V0H32.5C33.696 0 34.6666 0.970667 34.6666 2.16667ZM8.66665 43.3333H18.4166V52H16.25V45.5H11.9166V52H9.74998V45.5H6.49998V36.8333C6.49998 34.4435 8.44348 32.5 10.8333 32.5H17.3333V34.6667H10.8333C9.63732 34.6667 8.66665 35.6373 8.66665 36.8333V43.3333ZM23.8333 41.1667H33.5833V52H31.4166V43.3333H27.0833V52H24.9166V43.3333H21.6666V32.5C21.6666 30.1102 23.6101 28.1667 26 28.1667H32.5V30.3333H26C24.804 30.3333 23.8333 31.304 23.8333 32.5V41.1667Z"
                                fill="#FACC15" />
                        </g>
                        <defs>
                            <clipPath id="clip0_37_114">
                                <rect width="52" height="52" fill="white" />
                            </clipPath>
                        </defs>
                    </svg>
                    <div class="text-xl font-bold text-center">Pendampingan</div>
                    <div class="text-md text-center">
                        Siswa dibimbing oleh Guru dan Praktisi Industri untuk memastikan
                        hasil proyek sesuai dengan standar profesional.
                    </div>
                </div>
                <img src="assets/Arrow 2.svg" alt="" class="h-6 mt-20" />
                <div class="flex items-center gap-4 flex-col w-1/4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="52" height="52" viewBox="0 0 52 52"
                        fill="currentColor">
                        <g clip-path="url(#clip0_37_108)">
                            <path
                                d="M23.8333 50.9167C23.8333 51.5147 23.348 52 22.75 52H9.75C4.3745 52 0 47.6255 0 42.25V9.75217C0 4.37667 4.37233 0 9.75 0H33.5833C38.9588 0 43.3333 4.37233 43.3333 9.74783V16.2478C43.3333 16.8458 42.8502 17.3312 42.25 17.3312C41.6498 17.3312 41.1667 16.8458 41.1667 16.2478V9.74783C41.1667 5.56617 37.7628 2.1645 33.5833 2.1645H9.75C5.56833 2.1645 2.16667 5.56833 2.16667 9.75V42.2478C2.16667 46.4295 5.5705 49.8312 9.75 49.8312H22.75C23.348 49.8312 23.8333 50.3187 23.8333 50.9167ZM51.6837 51.6837C51.4713 51.896 51.194 52 50.9167 52C50.6393 52 50.362 51.8938 50.1497 51.6837L42.7332 44.2672C40.2697 46.3818 37.076 47.6667 33.5812 47.6667C25.8158 47.6667 19.4978 41.3487 19.4978 33.5833C19.4978 25.818 25.8158 19.5 33.5812 19.5C41.3465 19.5 47.6645 25.818 47.6645 33.5833C47.6645 37.076 46.3775 40.2697 44.265 42.7353L51.6815 50.1518C52.104 50.5743 52.1062 51.2612 51.6837 51.6837ZM45.5 33.5833C45.5 27.014 40.1548 21.6667 33.5833 21.6667C27.0118 21.6667 21.6667 27.014 21.6667 33.5833C21.6667 40.1527 27.0118 45.5 33.5833 45.5C40.1548 45.5 45.5 40.1527 45.5 33.5833ZM14.0833 10.8333H9.75C9.152 10.8333 8.66667 11.3187 8.66667 11.9167C8.66667 12.5147 9.152 13 9.75 13H14.0833C14.6813 13 15.1667 12.5147 15.1667 11.9167C15.1667 11.3187 14.6813 10.8333 14.0833 10.8333ZM14.0833 32.5H9.75C9.152 32.5 8.66667 32.9853 8.66667 33.5833C8.66667 34.1813 9.152 34.6667 9.75 34.6667H14.0833C14.6813 34.6667 15.1667 34.1813 15.1667 33.5833C15.1667 32.9853 14.6813 32.5 14.0833 32.5ZM20.5833 10.8333C19.9853 10.8333 19.5 11.3187 19.5 11.9167C19.5 12.5147 19.9853 13 20.5833 13H33.5833C34.1813 13 34.6667 12.5147 34.6667 11.9167C34.6667 11.3187 34.1813 10.8333 33.5833 10.8333H20.5833ZM14.0833 21.6667H9.75C9.152 21.6667 8.66667 22.152 8.66667 22.75C8.66667 23.348 9.152 23.8333 9.75 23.8333H14.0833C14.6813 23.8333 15.1667 23.348 15.1667 22.75C15.1667 22.152 14.6813 21.6667 14.0833 21.6667ZM39.3098 30.6172L33.4468 36.2895C32.7167 37.0045 31.5272 37.0132 30.797 36.2982L27.8438 33.384C27.4192 32.9637 26.7323 32.968 26.312 33.3927C25.8917 33.8195 25.896 34.5063 26.3228 34.9245L29.2782 37.843C30.0625 38.61 31.0917 38.9935 32.1208 38.9935C33.15 38.9935 34.1813 38.6078 34.9613 37.8387L40.8178 32.175C41.2468 31.759 41.2598 31.0722 40.8438 30.6432C40.43 30.2142 39.741 30.2055 39.3098 30.6172Z"
                                fill="#FACC15" />
                        </g>
                        <defs>
                            <clipPath id="clip0_37_108">
                                <rect width="52" height="52" fill="white" />
                            </clipPath>
                        </defs>
                    </svg>
                    <div class="text-xl font-bold text-center">
                        Presentasi dan Evaluasi
                    </div>
                    <div class="text-md text-center">
                        Siswa mempresentasikan hasil pekerjaan mereka kepada Guru dan Mitra
                        Industri untuk mendapatkan saran dan masukan.
                    </div>
                </div>
            </div>
        </section>

        <section class="bg-pplg-blue mx-[-5vw] mt-28 pb-12 text-white">
            <div class="flex gap-12">
                <div class="2/5">
                    <img src="assets/Keunggulan.svg" alt="" class="h-[80vh]" />
                </div>
                <div class="3/5">
                    <h1 class="font-semibold text-4xl pt-9 pb-7">Keunggulan Program</h1>
                    <hr class="opacity-50 mb-12" />
                    <ul class="my-2">
                        <li class="flex items-start gap-4 mt-4">
                            <img src="assets/Check.svg" alt="" class="w-5" />
                            <div>
                                <p class="font-semibold">Kurikulum Berbasis Industri</p>
                                <p class="">
                                    Mengintegrasikan kebutuhan dunia kerja dalam kurikulum
                                    pembelajaran.
                                </p>
                            </div>
                        </li>
                        <li class="flex items-start gap-4 mt-4">
                            <img src="assets/Check.svg" alt="" class="w-5" />
                            <div>
                                <p class="font-semibold">Fasilitas Modern</p>
                                <p class="">
                                    Menyediakan fasilitas seperti laboratorium komputer dan
                                    perangkat lunak terbaru.
                                </p>
                            </div>
                        </li>
                        <li class="flex items-start gap-4 mt-4">
                            <img src="assets/Check.svg" alt="" class="w-5" />
                            <div>
                                <p class="font-semibold">Proyek Nyata</p>
                                <p class="">
                                    Memberikan kesempatan kepada siswa untuk mengerjakan proyek
                                    dari Mitra Industri.
                                </p>
                            </div>
                        </li>
                        <li class="flex items-start gap-4 mt-4">
                            <img src="assets/Check.svg" alt="" class="w-5" />
                            <div>
                                <p class="font-semibold">Dukungan Mitra</p>
                                <p class="">
                                    Bekerja sama dengan perusahaan teknologi untuk pelatihan dan
                                    peluang kerja.
                                </p>
                            </div>
                        </li>
                        <li class="flex items-start gap-4 mt-4">
                            <img src="assets/Check.svg" alt="" class="w-5" />
                            <div>
                                <p class="font-semibold">Tenaga Pengajar Profesional</p>
                                <p class="">
                                    Didukung oleh guru berpengalaman dan pelatih dari Industri.
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="flex justify-around mt-12 px-[10vw]">
                <div class="flex p-2 flex-col gap-2 justify-center items-center w-1/4 border-r">
                    <p class="text-5xl font-bold">100+</p>
                    <p class="text-xl">Project Selesai</p>
                </div>
                <div class="flex p-2 flex-col gap-2 justify-center items-center w-1/4 border-r">
                    <p class="text-5xl font-bold">12</p>
                    <p class="text-xl">Mitra Industri</p>
                </div>
                <div class="flex p-2 flex-col gap-2 justify-center items-center w-1/4 border-r">
                    <p class="text-5xl font-bold">144</p>
                    <p class="text-xl">Siswa Berprestasi</p>
                </div>
                <div class="flex p-2 flex-col gap-2 justify-center items-center w-1/4">
                    <p class="text-5xl font-bold">140</p>
                    <p class="text-xl">Serapan Kerja</p>
                </div>
            </div>
        </section>

        <section class="flex flex-col justify-center mt-20">
            <div>
                <h3 class="font-caveat text-pplg-yellow-darken text-3xl font-bold">
                    Apa kata mereka?
                </h3>
                <h1 class="text-3xl font-bold mb-16">Testimoni Siswa dan Alumni</h1>
            </div>

            <div class="flex justify-between gap-10">
                <div class="w-1/4 space-y-4">
                    <div class="flex gap-4">
                        <img src="assets/irfan-sholeh.webp" alt="" class="rounded-full h-14" />
                        <div class="text-lg">
                            <p class="font-bold">Irfan Sholeh</p>
                            <p>RPL - Angkatan 2020</p>
                        </div>
                    </div>
                    <div class="text-md">
                        Saya sangat bersyukur bisa mendapatkan ilmu teori dan juga praktik yang bagus serta dibimbing
                        oleh guru-guru yang profesional, sehingga saya lebih percaya diri dalam bersaing baik di dunia
                        pekerjaan ataupun di bangku perkuliahan.
                    </div>
                </div>
                <div class="w-1/4 space-y-4">
                    <div class="flex gap-4">
                        <img src="assets/irfan-sholeh.webp" alt="" class="rounded-full h-14" />
                        <div class="text-lg">
                            <p class="font-bold">Irfan Sholeh</p>
                            <p>RPL - Angkatan 2020</p>
                        </div>
                    </div>
                    <div class="text-md">
                        Saya sangat bersyukur bisa mendapatkan ilmu teori dan juga praktik yang bagus serta dibimbing
                        oleh guru-guru yang profesional, sehingga saya lebih percaya diri dalam bersaing baik di dunia
                        pekerjaan ataupun di bangku perkuliahan.
                    </div>
                </div>
                <div class="w-1/4 space-y-4">
                    <div class="flex gap-4">
                        <img src="assets/irfan-sholeh.webp" alt="" class="rounded-full h-14" />
                        <div class="text-lg">
                            <p class="font-bold">Irfan Sholeh</p>
                            <p>RPL - Angkatan 2020</p>
                        </div>
                    </div>
                    <div class="text-md">
                        Saya sangat bersyukur bisa mendapatkan ilmu teori dan juga praktik yang bagus serta dibimbing
                        oleh guru-guru yang profesional, sehingga saya lebih percaya diri dalam bersaing baik di dunia
                        pekerjaan ataupun di bangku perkuliahan.
                    </div>
                </div>
            </div>
        </section>

        <footer class="bg-pplg-blue pt-12 px-16 mt-20 text-white -mx-[5vw]">
            <div class="flex w-full justify-between">
                <div class="flex flex-col">
                    <img src="" alt="" />
                    <p class="text-xl font-semibold">
                        <img src="assets/Logo PPLG.svg" alt="" class="h-16 mb-8" />
                        Pengembangan Perangkat Lunak dan Gim
                    </p>
                    <p class="text-md">
                        Salah satu kompetensi keahlian di SMKN 2 Sumedang dalam bidang
                        Teknologi Komputer dan Informatika.
                    </p>
                    <div class="flex mt-8 gap-1 h-8">
                        <img src="assets/Instagram.svg" alt="" />
                        <img src="assets/Youtube.svg" alt="" />
                    </div>
                </div>

                <div class="flex w-full justify-around">
                    <div class="flex flex-col gap-5">
                        <h4 class="text-xl font-semibold">Menu Utama</h4>
                        <div>
                            <Link href="/">Beranda</Link>
                        </div>
                        <div>
                            <Link href="/profile">Profil</Link>
                        </div>
                        <div>
                            <Link href="/service-program">Program dan Layanan</Link>
                        </div>
                        <div>
                            <Link href="/gallery">Galeri</Link>
                        </div>
                    </div>
                    <div class="flex flex-col gap-5">
                        <h4 class="text-xl font-semibold">Informasi</h4>
                        <div>
                            <a href="/announcement-info">Pengumuman</a>
                        </div>
                        <div>
                            <a href="/alumni-students">Siswa dan Alumni</a>
                        </div>
                        <div>
                            <a href="/collaboration">Kerja sama Industri</a>
                        </div>
                        <div>
                            <a href="/contact-us">Kontak</a>
                        </div>
                    </div>
                    <div class="flex flex-col gap-5">
                        <h4 class="text-xl font-semibold">Registrasi</h4>
                        <div>
                            <a href="">Daftar</a>
                        </div>
                        <div>
                            <a href="/login">Masuk</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center">
                <hr class="mt-6 opacity-50" />
                <p class="flex justify-center py-6">
                    Copyright ©2025 PPLG SMKN 2 Sumedang. All rights reserved.
                </p>
            </div>
        </footer>
    </div>

</template>

<script setup>
import { Link } from '@inertiajs/vue3';


</script>