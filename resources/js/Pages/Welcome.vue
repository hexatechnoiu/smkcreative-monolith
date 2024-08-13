<script setup>
import { Head, Link } from "@inertiajs/vue3";
import { ref } from "vue";

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
const loading = ref("");
const currentCategory = ref({
    projects: props.projects,
    name: "all",
    id: -1,
});
const HandleCategoryClick = async (category) => {
    let request;
    let name;
    let id;
    if (category === "all") {
        loading.value = "all";
        request = await window.axios.get(`/projects/`);
        name = category;
        id = -1;
    } else {
        name = category.name;
        loading.value = name;
        id = category.id;
        request = await window.axios.get(`/projects/${category.id}`);
    }
    currentCategory.value = {
        projects: request.data,
        name,
        id,
    };
    loading.value = "";
};
</script>

<template>
    <main class="flex flex-col">
        <header
            class="fixed inset-x-0 top-0 z-50 w-full bg-primary text-white transition-transform"
        >
            <div class="px-8 py-6 md:container" >
                <div class="flex items-center justify-between gap-4">
                    <div
                        aria-labelledby="main-logo"
                        class="flex items-center gap-4"
                    >
                        <img
                            alt="Rekayasa Perangkat Lunak"
                            loading="eager"
                            width="42"
                            height="42"
                            decoding="async"
                            data-nimg="1"
                            style="color: transparent"
                            src="/assets/images/logo-rpl.png"
                        />
                        <div class="hidden leading-4 md:block">
                            <h5 class="text-2xl font-bold text-yellow-300">
                                RPL PPLG
                            </h5>
                            <h5 class="text-xs font-medium">SMKN 2 SUMEDANG</h5>
                        </div>
                    </div>
                    <div
                        aria-labelledby="navigation"
                        class="hidden gap-6 md:flex"
                    >
                        <a href="#hero"
                            class="cursor-pointer text-lg font-medium uppercase opacity-80 hover:opacity-100"
                            >Home</a
                        ><a href="#about"
                            class="cursor-pointer text-lg font-medium uppercase opacity-80 hover:opacity-100"
                            >About</a
                        ><a href="#project"
                            class="cursor-pointer text-lg font-medium uppercase opacity-80 hover:opacity-100 active"
                            >Project</a
                        >
                    </div>
                </div>
            </div>
        </header>
        <div class="flex-1">
            <section
                id="hero"
                class="relative flex min-h-screen items-center justify-center bg-primary text-white"
            >
                <div
                    class="flex flex-col items-center justify-center px-8 py-24 text-center lg:container"
                >
                    <div aria-labelledby="content-left">
                        <h1
                            class="text-3xl md:text-7xl font-bold text-yellow-400"
                        >
                            RPL PPLG
                        </h1>
                        <h2 class="text-2xl md:text-5xl font-medium">
                            SMKN NEGERI 2 SUMEDANG
                        </h2>
                    </div>
                    <div
                        class="absolute bottom-8 left-1/2 -translate-x-1/2 transform animate-pulse cursor-pointer text-white transition-all"
                    >
                        Scroll down
                    </div>
                </div>
            </section>
            <section id="about" class="px-8 lg:container lg:px-[16rem]  scroll-mt-24">
                <div class="grid grid-cols-1 gap-16 py-24 lg:grid-cols-2">
                    <div
                        aria-labelledby="content-left"
                        class="flex flex-col gap-16"
                    >
                        <div
                            class="border bg-card text-card-foreground overflow-hidden rounded-2xl shadow-none"
                        >
                            <div
                                class="flex flex-col space-y-1.5 overflow-hidden p-0"
                            >
                                <div
                                    style="
                                        position: relative;
                                        width: 100%;
                                        padding-bottom: 70%;
                                    "
                                >
                                    <div
                                        style="
                                            position: absolute;
                                            top: 0;
                                            right: 0;
                                            bottom: 0;
                                            left: 0;
                                        "
                                    >
                                        <img
                                            alt="Game Development"
                                            loading="eager"
                                            decoding="async"
                                            class="object-cover"
                                            style="
                                                position: absolute;
                                                height: 100%;
                                                width: 100%;
                                                left: 0;
                                                top: 0;
                                                right: 0;
                                                bottom: 0;
                                                color: transparent;
                                            "
                                            sizes="100vw"
                                            src="/assets/overview/tictactoe.png"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="p-6 flex flex-col gap-4 px-6 py-8">
                                <h3 class="text-xl font-bold tracking-wide">
                                    Game Development
                                </h3>
                                <p class="text-sm text-muted-foreground">
                                    Kami ahli dalam menciptakan permainan seru
                                    untuk perangkat mobile dan komputer. Kami
                                    fokus pada pengalaman bermain yang menghibur
                                    dengan desain yang keren.
                                </p>
                            </div>
                        </div>
                        <div
                            class="border bg-card text-card-foreground overflow-hidden rounded-2xl shadow-none"
                        >
                            <div
                                class="flex flex-col space-y-1.5 overflow-hidden p-0"
                            >
                                <div
                                    style="
                                        position: relative;
                                        width: 100%;
                                        padding-bottom: 70%;
                                    "
                                >
                                    <div
                                        style="
                                            position: absolute;
                                            top: 0;
                                            right: 0;
                                            bottom: 0;
                                            left: 0;
                                        "
                                    >
                                        <img
                                            alt="Animation"
                                            loading="eager"
                                            decoding="async"
                                            class="object-cover"
                                            style="
                                                position: absolute;
                                                height: 100%;
                                                width: 100%;
                                                left: 0;
                                                top: 0;
                                                right: 0;
                                                bottom: 0;
                                                color: transparent;
                                            "
                                            sizes="100vw"
                                            src="/assets/overview/animation.png"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="p-6 flex flex-col gap-4 px-6 py-8">
                                <h3 class="text-xl font-bold tracking-wide">
                                    Animation
                                </h3>
                                <p class="text-sm text-muted-foreground">
                                    Kami membuat animasi menarik untuk promosi,
                                    pembelajaran, dan hiburan. Kami selalu
                                    berusaha memberikan pesan yang jelas dan
                                    kreatif melalui animasi kami.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div
                        aria-labelledby="content-left"
                        class="flex flex-col gap-16 pt-40"
                    >
                        <div
                            class="border bg-card text-card-foreground overflow-hidden rounded-2xl shadow-none"
                        >
                            <div
                                class="flex flex-col space-y-1.5 overflow-hidden p-0"
                            >
                                <div
                                    style="
                                        position: relative;
                                        width: 100%;
                                        padding-bottom: 70%;
                                    "
                                >
                                    <div
                                        style="
                                            position: absolute;
                                            top: 0;
                                            right: 0;
                                            bottom: 0;
                                            left: 0;
                                        "
                                    >
                                        <img
                                            alt="Website Development"
                                            loading="eager"
                                            decoding="async"
                                            class="object-cover"
                                            style="
                                                position: absolute;
                                                height: 100%;
                                                width: 100%;
                                                left: 0;
                                                top: 0;
                                                right: 0;
                                                bottom: 0;
                                                color: transparent;
                                            "
                                            sizes="100vw"
                                            src="/assets/overview/website.png"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="p-6 flex flex-col gap-4 px-6 py-8">
                                <h3 class="text-xl font-bold tracking-wide">
                                    Website Development
                                </h3>
                                <p class="text-sm text-muted-foreground">
                                    Kami membuat situs web yang tampil
                                    responsive di semua perangkat. Kami ingin
                                    pengguna merasa nyaman dan terkesan dengan
                                    tampilan situs web yang kami buat.
                                </p>
                            </div>
                        </div>
                        <div
                            class="border bg-card text-card-foreground overflow-hidden rounded-2xl shadow-none"
                        >
                            <div
                                class="flex flex-col space-y-1.5 overflow-hidden p-0"
                            >
                                <div
                                    style="
                                        position: relative;
                                        width: 100%;
                                        padding-bottom: 70%;
                                    "
                                >
                                    <div
                                        style="
                                            position: absolute;
                                            top: 0;
                                            right: 0;
                                            bottom: 0;
                                            left: 0;
                                        "
                                    >
                                        <img
                                            alt="Design And Printing"
                                            loading="eager"
                                            decoding="async"
                                            class="object-cover"
                                            style="
                                                position: absolute;
                                                height: 100%;
                                                width: 100%;
                                                left: 0;
                                                top: 0;
                                                right: 0;
                                                bottom: 0;
                                                color: transparent;
                                            "
                                            sizes="100vw"
                                            src="/assets/overview/dnp.png"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="p-6 flex flex-col gap-4 px-6 py-8">
                                <h3 class="text-xl font-bold tracking-wide">
                                    Design And Printing
                                </h3>
                                <p class="text-sm text-muted-foreground">
                                    Kami menciptakan desain visual dan materi
                                    cetak berkualitas tinggi, seperti brosur dan
                                    poster. Kami menggabungkan desain kreatif
                                    dengan hasil cetak yang profesional.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section id="project" class="min-h-screen scroll-mt-32">
                <div class="space-y-12 px-8 lg:container">
                    <div aria-labelledby="project-header">
                        <div class="space-y-2">
                            <h1 class="text-4xl font-bold">Proyek Kami</h1>
                            <p class="text-muted-foreground">
                                Temukan berbagai karya menarik hasil karya dari
                                jurusan RPL / PPLG
                            </p>
                        </div>
                    </div>
                    <div aria-labelledby="project-category">
                        <div>
                            <div class="flex gap-4">
                                <div>
                                    <button
                                        class="inline-flex select-none items-center justify-center whitespace-nowrap rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 shadow hover:bg-primary/90 hover:text-white h-9 px-4 py-2"
                                        @click="HandleCategoryClick('all')"
                                        :class="
                                            (currentCategory.name === 'all'
                                                ? 'bg-primary text-primary-foreground '
                                                : '') +
                                            (loading === 'all'
                                                ? 'animate-bounce'
                                                : '')
                                        "
                                    >
                                        All
                                    </button>
                                </div>
                                <div
                                    v-for="category in categories"
                                    :key="category.id"
                                >
                                    <button
                                        class="inline-flex  select-none items-center justify-center whitespace-nowrap rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 shadow hover:bg-primary/90 h-9 px-4 py-2 border text-primary hover:text-white"
                                        :class="
                                            (currentCategory.name ===
                                            category.name
                                                ? 'bg-primary text-primary-foreground '
                                                : '') +
                                            (loading === category.name
                                                ? 'animate-bounce'
                                                : '')
                                        "
                                        @click="HandleCategoryClick(category)"
                                    >
                                        {{ category.name }}
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div aria-labelledby="project-content" class="transition-all duration-700" :class="loading !== '' ? 'opacity-5' : ''">
                        <div class="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
                            <a
                                v-for="project in currentCategory.projects"
                                target="_blank"
                                :href="project.link"
                                ><div
                                    class="rounded-xl border bg-card text-card-foreground shadow"
                                >
                                    <div class="flex flex-col space-y-1.5 p-2">
                                        <div
                                            style="
                                                position: relative;
                                                width: 100%;
                                                padding-bottom: 60%;
                                            "
                                        >
                                            <div
                                                style="
                                                    position: absolute;
                                                    inset: 0px;
                                                "
                                            >
                                                <img
                                                    alt="Profile company web NOIU"
                                                    loading="lazy"
                                                    decoding="async"
                                                    class="rounded-md object-cover"
                                                    sizes="100vw"
                                                    :src="project.photo"
                                                    style="
                                                        position: absolute;
                                                        height: 100%;
                                                        width: 100%;
                                                        inset: 0px;
                                                        color: transparent;
                                                    "
                                                />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-6 pt-0">
                                        <h3
                                            class="font-semibold tracking-tight text-lg"
                                        >
                                            {{ project.name }}
                                        </h3>
                                        <p
                                            class="text-sm text-muted-foreground"
                                        >
                                            {{ project.category.name }}
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <footer class="relative inset-x-0 bottom-0 mt-12 bg-primary text-white">
            <div
                class="grid gap-12 px-8 pt-24 lg:container lg:grid-cols-3 lg:gap-24"
            >
                <div aria-labelledby="footer-header">
                    <div class="flex items-center gap-4">
                        <img
                            alt="Rekayasa Perangkat Lunak"
                            loading="eager"
                            width="52"
                            height="52"
                            decoding="async"
                            data-nimg="1"
                            style="color: transparent"
                            src="/assets/images/logo-rpl.png"
                        />
                        <div class="leading-4 md:block">
                            <h5 class="text-3xl font-bold text-yellow-300">
                                RPL PPLG
                            </h5>
                            <h5 class="text-sm font-medium">SMKN 2 SUMEDANG</h5>
                        </div>
                    </div>
                    <p class="pt-4 text-sm">
                        Website dengan representasi nyata dari dedikasi kami
                        dalam memajang hasil perjalanan kami dalam dunia RPL /
                        PPLG, dari fase perencanaan hingga pencapaian.
                    </p>
                </div>
                <div aria-labelledby="footer-content" class="col-span-2 pt-6">
                    <ul class="grid grid-cols-2 gap-12 lg:grid-cols-3">
                        <li>
                            <h5 class="text-lg opacity-50">Menu</h5>
                            <ul class="space-y-4 pt-8">
                                <li>
                                    <a
                                        class="transition-all hover:opacity-50"
                                        href=""
                                        >Beranda</a
                                    >
                                </li>
                                <li>
                                    <a
                                        class="transition-all hover:opacity-50"
                                        href=""
                                        >Tentang Kami</a
                                    >
                                </li>
                                <li>
                                    <a
                                        class="transition-all hover:opacity-50"
                                        href=""
                                        >Projects</a
                                    >
                                </li>
                            </ul>
                        </li>
                        <li>
                            <h5 class="text-lg opacity-50">Situs Lain</h5>
                            <ul class="space-y-4 pt-8">
                                <li>
                                    <a
                                        class="transition-all hover:opacity-50"
                                        href="https://smkn2sumedang.sch.id/"
                                        >Smkn 2 Sumedang</a
                                    >
                                </li>
                                <li>
                                    <a
                                        class="transition-all hover:opacity-50"
                                        href="https://tefa.smkn2sumedang.sch.id/"
                                        >Teaching Factory</a
                                    >
                                </li>
                            </ul>
                        </li>
                        <li>
                            <h5 class="text-lg opacity-50">Hubungi Kami</h5>
                            <ul class="space-y-4 pt-8">
                                <li>
                                    <a
                                        class="transition-all hover:opacity-50"
                                        href=""
                                        >0261-201531</a
                                    >
                                </li>
                                <li>
                                    <a
                                        class="transition-all hover:opacity-50"
                                        href=""
                                        >smkn2sumedang@yahoo.com</a
                                    >
                                </li>
                                <li>
                                    <a
                                        class="transition-all hover:opacity-50"
                                        href=""
                                        >Jl. Arief Rakhman Hakim No. 59,
                                        Sumedang</a
                                    >
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div aria-labelledby="footer-sosials">
                <div class="flex px-8 py-8 md:container">
                    <div class="flex gap-6">
                        <a href=""
                            ><svg
                                width="24"
                                height="25"
                                viewBox="0 0 24 25"
                                fill="currentColor"
                                xmlns="http://www.w3.org/2000/svg"
                            >
                                <path
                                    fill-rule="evenodd"
                                    clip-rule="evenodd"
                                    d="M2 12.5C2 8.30863 2 6.21294 3.05041 4.76718C3.38964 4.30026 3.80026 3.88964 4.26718 3.55041C5.71294 2.5 7.80863 2.5 12 2.5C16.1914 2.5 18.2871 2.5 19.7328 3.55041C20.1997 3.88964 20.6104 4.30026 20.9496 4.76718C22 6.21294 22 8.30863 22 12.5C22 16.6914 22 18.7871 20.9496 20.2328C20.6104 20.6997 20.1997 21.1104 19.7328 21.4496C18.2871 22.5 16.1914 22.5 12 22.5C7.80863 22.5 5.71294 22.5 4.26718 21.4496C3.80026 21.1104 3.38964 20.6997 3.05041 20.2328C2 18.7871 2 16.6914 2 12.5ZM12 7.20588C9.07632 7.20588 6.70588 9.57632 6.70588 12.5C6.70588 15.4237 9.07632 17.7941 12 17.7941C14.9237 17.7941 17.2941 15.4237 17.2941 12.5C17.2941 9.57632 14.9237 7.20588 12 7.20588ZM12 15.8088C10.1762 15.8088 8.69118 14.3238 8.69118 12.5C8.69118 10.6749 10.1762 9.19118 12 9.19118C13.8238 9.19118 15.3088 10.6749 15.3088 12.5C15.3088 14.3238 13.8238 15.8088 12 15.8088ZM18.3966 6.80883C18.3966 7.19844 18.0808 7.51427 17.6912 7.51427C17.3016 7.51427 16.9857 7.19844 16.9857 6.80883C16.9857 6.41923 17.3016 6.10339 17.6912 6.10339C18.0808 6.10339 18.3966 6.41923 18.3966 6.80883Z"
                                ></path></svg></a
                        ><a href=""
                            ><svg
                                width="24"
                                height="25"
                                viewBox="0 0 24 25"
                                fill="currentColor"
                                xmlns="http://www.w3.org/2000/svg"
                            >
                                <path
                                    fill-rule="evenodd"
                                    clip-rule="evenodd"
                                    d="M21.3903 4.61395C22.4182 4.8908 23.2288 5.70122 23.5055 6.72936C24.0197 8.60728 23.9999 12.5217 23.9999 12.5217C23.9999 12.5217 23.9999 16.4161 23.5057 18.2942C23.2288 19.3222 22.4184 20.1328 21.3903 20.4095C19.5122 20.9038 12 20.9038 12 20.9038C12 20.9038 4.50731 20.9038 2.60961 20.3899C1.58148 20.113 0.771054 19.3024 0.4942 18.2745C0 16.4161 0 12.5019 0 12.5019C0 12.5019 0 8.60728 0.4942 6.72936C0.770871 5.70141 1.60125 4.87103 2.60943 4.59436C4.48753 4.09998 11.9998 4.09998 11.9998 4.09998C11.9998 4.09998 19.5122 4.09998 21.3903 4.61395ZM15.8549 12.5019L9.60788 16.1V8.90391L15.8549 12.5019Z"
                                ></path></svg></a
                        ><a href=""
                            ><svg
                                width="24"
                                height="25"
                                viewBox="0 0 24 25"
                                fill="currentColor"
                                xmlns="http://www.w3.org/2000/svg"
                            >
                                <path
                                    d="M17.563 1.50458L14.7857 1.5C11.6655 1.5 9.64916 3.62509 9.64916 6.91423V9.41055H6.85674C6.61544 9.41055 6.42004 9.6115 6.42004 9.85937V13.4763C6.42004 13.7241 6.61567 13.9249 6.85674 13.9249H9.64916V23.0514C9.64916 23.2993 9.84455 23.5 10.0859 23.5H13.7292C13.9705 23.5 14.1659 23.299 14.1659 23.0514V13.9249H17.4308C17.6721 13.9249 17.8675 13.7241 17.8675 13.4763L17.8689 9.85937C17.8689 9.74036 17.8228 9.62638 17.741 9.54215C17.6592 9.45793 17.5478 9.41055 17.432 9.41055H14.1659V7.29439C14.1659 6.27727 14.4018 5.76094 15.6916 5.76094L17.5625 5.76025C17.8036 5.76025 17.999 5.5593 17.999 5.31166V1.95317C17.999 1.70576 17.8038 1.50504 17.563 1.50458Z"
                                ></path></svg
                        ></a>
                    </div>
                    <div class="ml-4 border-l pl-4">
                        ©<!-- -->
                        <a
                            class="transition-all hover:opacity-50"
                            href="https://smkn2sumedang.sch.id/"
                            >SMKN 2 SUMEDANG</a
                        >
                    </div>
                </div>
            </div>
        </footer>
    </main>
</template>
