<script setup>
import { Head, Link, useForm } from "@inertiajs/vue3";

defineProps({
    canResetPassword: {
        type: Boolean,
    },
    status: {
        type: String,
    },
});

const form = useForm({
    email: "",
    password: "",
    remember: false,
});

const submit = () => {
    form.post(route("login"), {
        onFinish: () => form.reset("password"),
    });
};
</script>

<template>
    <Head title="Log in" />
    <div
        class="min-h-screen flex items-center justify-center bg-indigo-50 dark:bg-indigo-950 p-4"
    >
        <div class="w-full max-w-md bg-indigo-100 dark:bg-indigo-900 text-indigo-800 dark:text-indigo-50 rounded-lg shadow-lg p-6">
            <h1 class="text-2xl font-semibold text-center  mb-6">
                Log In
            </h1>

            <!-- Status Message -->
            <div
                v-if="status"
                class="mb-4 text-center text-sm font-medium text-green-600"
            >
                {{ status }}
            </div>

            <!-- Form -->
            <form @submit.prevent="submit" class="space-y-6">
                <!-- Email -->
                <div>
                    <label
                        for="email"
                        class="block text-sm font-medium"
                        >Email</label
                    >
                    <input
                        id="email"
                        type="email"
                        class="mt-1 block w-full rounded-md border-gray-300 bg-indigo-50 dark:bg-indigo-950 dark:text-indigo-100 dark:placeholder:text-indigo-400 dark:border-indigo-800 shadow-sm focus:ring-blue-500 focus:border-blue-500"
                        v-model="form.email"
                        required
                        autofocus
                        placeholder="Enter your email"
                        autocomplete="username"
                    />
                    <div
                        v-if="form.errors.email"
                        class="mt-1 text-sm text-red-600"
                    >
                        {{ form.errors.email }}
                    </div>
                </div>

                <!-- Password -->
                <div>
                    <label
                        for="password"
                        class="block text-sm font-medium"
                        >Password</label
                    >
                    <input
                        id="password"
                        type="password"
                        class="mt-1 block w-full rounded-md border-gray-300 bg-indigo-50 dark:bg-indigo-950 dark:text-indigo-100 dark:placeholder:text-indigo-400 dark:border-indigo-800 shadow-sm focus:ring-blue-500 focus:border-blue-500"
                        v-model="form.password"
                        required
                        placeholder="Enter your password"
                        autocomplete="current-password"
                    />
                    <div
                        v-if="form.errors.password"
                        class="mt-1 text-sm text-red-600"
                    >
                        {{ form.errors.password }}
                    </div>
                </div>

                <!-- Remember Me -->
                <div class="flex items-center">
                    <input
                        id="remember"
                        type="checkbox"
                        class="h-4 w-4 text-blue-600 dark:text-indigo-700 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-0 dark:border-none dark:bg-indigo-950"
                        v-model="form.remember"
                    />
                    <label for="remember" class="ml-2 text-sm"
                        >Remember me</label
                    >
                </div>

                <!-- Actions -->
                <div class="flex items-center justify-between">
                    <button
                        type="submit"
                        class="ml-auto  bg-indigo-600 dark:bg-indigo-800 text-white px-4 py-2 rounded-md shadow hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
                        :class="{
                            'opacity-50 cursor-not-allowed': form.processing,
                        }"
                        :disabled="form.processing"
                    >
                        Log in
                    </button>
                </div>
            </form>
        </div>
    </div>
</template>
