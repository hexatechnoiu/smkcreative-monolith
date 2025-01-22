<script setup lang="ts">
import Navbar from '@/Components/V2/Navbar.vue';
import V2Layout from '@/Layouts/V2Layout.vue';

</script>

<template>
    <V2Layout>
        <div class="px-[5vw] font-jakarta min-h-screen">
            <Navbar />

            <section class="grid grid-cols-2 space-x-4 gap-10">
                <div>
                    <img src="assets/Profil.svg" alt="" class="h-[72vh]">
                </div>

                <div>
                    <h3 class="font-caveat text-pplg-yellow-darken text-3xl font-bold">Profil Jurusan</h3>
                    <div class="mt-2">
                        <h1 class="text-3xl font-semibold mb-1">Visi</h1>
                        <p>Mewujudkan lulusan yang unggul, kreatif, dan inovatif di bidang pengembangan perangkat lunak
                            dan
                            gim, serta mampu bersaing di tingkat nasional maupun internasional dengan sikap profesional
                            dan
                            etika kerja yang tinggi.</p>
                    </div>
                    <div class="mt-4">
                        <h1 class="text-3xl font-semibold mb-1">Misi</h1>
                        <p>1. Menyelenggarakan pembelajaran berbasis proyek yang menekankan praktik nyata di dunia
                            industri.<br>
                            2. Mengintegrasikan teknologi terkini dalam proses pembelajaran dan pengembangan produk.<br>
                            3. Mengembangkan kerja sama strategis dengan mitra industri, lembaga pendidikan, dan
                            pemerintah.<br>
                            4. Mendorong siswa untuk menciptakan solusi teknologi yang bermanfaat bagi masyarakat.<br>
                            5. Membekali siswa dengan keterampilan tambahan, seperti komunikasi profesional, manajemen
                            proyek, dan entrepreneurship.
                        </p>
                    </div>
                </div>
            </section>
        </div>
    </V2Layout>
</template>
