<script setup>
import About from "@/Sections/About.vue";
import Footer from "@/Sections/Footer.vue";
import Header from "@/Sections/Header.vue";
import Hero from "@/Sections/Hero.vue";
import { Head, Link } from "@inertiajs/vue3";
import { ref } from "vue";

document.body.classList.remove(
    "dark:bg-indigo-950",
);
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

    <Head title="SMK Negeri 2 Sumedang" />
    <main class="flex flex-col h-screen">
        <Header />
        <div class="flex-1">
            <Hero />
            <About />
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
                            <div class="overflow-hidden h-11">
                                <div class="flex gap-4 pb-2 pt-1 overflow-x-scroll">
                                    <div>
                                        <button
                                            class="inline-flex select-none items-center justify-center whitespace-nowrap rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 shadow hover:bg-primary/90 hover:text-white h-9 px-4 py-2"
                                            @click="HandleCategoryClick('all')" :class="(currentCategory.name === 'all'
                                                    ? 'bg-primary text-primary-foreground '
                                                    : '') +
                                                (loading === 'all'
                                                    ? 'animate-pulse'
                                                    : '')
                                                ">
                                            All
                                        </button>
                                    </div>
                                    <div v-for="category in categories" :key="category.id">
                                        <button
                                            class="inline-flex select-none items-center justify-center whitespace-nowrap rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 shadow hover:bg-primary/90 h-9 px-4 py-2 border text-primary hover:text-white"
                                            :class="(currentCategory.name ===
                                                    category.name
                                                    ? 'bg-primary text-primary-foreground '
                                                    : '') +
                                                (loading === category.name
                                                    ? 'animate-pulse'
                                                    : '')
                                                " @click="
                                                HandleCategoryClick(category)
                                                ">
                                            {{ category.name }}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div aria-labelledby="project-content" class="transition-all duration-700"
                        :class="loading !== '' ? 'opacity-5' : ''">
                        <div class="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
                            <a v-for="project in currentCategory.projects" target="_blank" :href="project.link">
                                <div class="rounded-xl border bg-card text-card-foreground shadow">
                                    <div class="flex flex-col space-y-1.5 p-2">
                                        <div style="
                                                position: relative;
                                                width: 100%;
                                                padding-bottom: 60%;
                                            ">
                                            <div style="
                                                    position: absolute;
                                                    inset: 0px;
                                                ">
                                                <img alt="Profile company web NOIU" loading="lazy" decoding="async"
                                                    class="rounded-md object-cover" sizes="100vw" :src="project.photo"
                                                    style="
                                                        position: absolute;
                                                        height: 100%;
                                                        width: 100%;
                                                        inset: 0px;
                                                        color: transparent;
                                                    " />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-6 pt-0">
                                        <h3 class="font-semibold tracking-tight text-lg">
                                            {{ project.name }}
                                        </h3>
                                        <p class="text-sm text-muted-foreground">
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
        <Footer />
    </main>
</template>
