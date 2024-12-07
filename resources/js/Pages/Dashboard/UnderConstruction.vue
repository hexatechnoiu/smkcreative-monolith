<template>
    <DashboardLayout>
        <div
            class="flex flex-col items-center justify-center min-h-screen bg-inherit text-indigo-800 dark:text-indigo-200 p-6"
        >
            <!-- Placeholder for SVG -->
            <div class="mb-6">
                <!-- Replace this div with your SVG -->
                <div
                    class="w-32 h-32 bg-indigo-300 dark:bg-indigo-700 rounded-full flex items-center justify-center"
                >
                    <p
                        class="text-indigo-500 dark:text-indigo-400 text-2xl font-bold tracking-widest"
                    >
                        ごめん
                    </p>
                </div>
            </div>
            <h1 class="text-2xl font-semibold">Page Under Construction</h1>
            <p
                class="mt-2 text-indigo-600 dark:text-indigo-400 text-center max-w-lg"
            >
                We're working hard to bring you something amazing. Please check
                back soon!
            </p>
            <button
                @click="goBack"
                class="mt-6 px-6 py-2 rounded bg-blue-600 text-white hover:bg-blue-700 dark:bg-blue-500 dark:hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-400 focus:ring-offset-2 focus:ring-offset-indigo-100 dark:focus:ring-offset-indigo-900"
            >
                Go Back
            </button>
        </div>
    </DashboardLayout>
</template>

<script setup>
import DashboardLayout from "@/Layouts/DashboardLayout.vue";

function goBack() {
    window.history.back(); // Navigate back to the previous page
}
</script>
