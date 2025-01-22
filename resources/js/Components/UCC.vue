<script setup>
function goBack() {
    window.history.back();
}
</script>

<template>
    <div
        class="flex flex-col items-center justify-center min-h-screen bg-inherit text-gray-900 dark:text-white p-6">
        <div class="mb-6">
            <div class="w-32 h-32 bg-indigo-300 dark:bg-indigo-700 rounded-full flex items-center justify-center">
                <p class="text-indigo-500 dark:text-indigo-400 text-2xl font-bold tracking-widest">
                    <svg xmlns="http://www.w3.org/2000/svg" height="4rem" viewBox="0 -960 960 960" width="4rem" fill="currentColor"><path d="M756-120 537-339l84-84 219 219-84 84Zm-552 0-84-84 276-276-68-68-28 28-51-51v82l-28 28-121-121 28-28h82l-50-50 142-142q20-20 43-29t47-9q24 0 47 9t43 29l-92 92 50 50-28 28 68 68 90-90q-4-11-6.5-23t-2.5-24q0-59 40.5-99.5T701-841q15 0 28.5 3t27.5 9l-99 99 72 72 99-99q7 14 9.5 27.5T841-701q0 59-40.5 99.5T701-561q-12 0-24-2t-23-7L204-120Z"/></svg>
                </p>
            </div>
        </div>
        <h1 class="text-2xl font-semibold text-center">Page Under Construction</h1>
        <p class="mt-2 text-gray-600 dark:text-gray-400 text-center max-w-lg">
            We're working hard to bring you something amazing. Please check
            back soon!
        </p>
        <button @click.prevent="goBack"
            class="mt-6 px-6 py-2 rounded bg-blue-600 text-white hover:bg-blue-700 dark:bg-blue-500 dark:hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-400 focus:ring-offset-2 focus:ring-offset-indigo-100 dark:focus:ring-offset-indigo-900">
            Go Back
        </button>
    </div>
</template>
