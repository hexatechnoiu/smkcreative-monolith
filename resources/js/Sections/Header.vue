<template>
    <header
        class="fixed inset-x-0 top-0 z-50 w-full bg-primary text-white transition-transform"
    >
        <div class="px-8 py-6 md:container">
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
                            PPLG
                        </h5>
                        <h5 class="text-xs font-medium">SMKN 2 SUMEDANG</h5>
                    </div>
                </div>
                <div aria-labelledby="navigation" class="hidden gap-6 md:flex">
                    <a
                        href="#hero"
                        class="cursor-pointer text-lg font-medium uppercase opacity-80 hover:opacity-100"
                        >Home</a
                    ><a
                        href="#about"
                        class="cursor-pointer text-lg font-medium uppercase opacity-80 hover:opacity-100"
                        >About</a
                    ><a
                        href="#project"
                        class="cursor-pointer text-lg font-medium uppercase opacity-80 hover:opacity-100 active"
                        >Project</a
                    >
                </div>
            </div>
        </div>
    </header>
</template>
