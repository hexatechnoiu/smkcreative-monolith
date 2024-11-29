<script setup>
import { Head, Link, useForm } from '@inertiajs/vue3';

defineProps({
    canResetPassword: {
        type: Boolean,
    },
    status: {
        type: String,
    },
});

const form = useForm({
    email: '',
    password: '',
    remember: false,
});

const submit = () => {
    form.post(route('login'), {
        onFinish: () => form.reset('password'),
    });
};
</script>

<template>

    <Head title="Log in" />
    <div class="min-h-screen flex items-center justify-center bg-gradient-to-br from-blue-300 to-blue-500 p-4">
        <div class="w-full max-w-md bg-white rounded-lg shadow-lg p-6">
            <h1 class="text-2xl font-semibold text-center text-gray-800 mb-6">Log In</h1>

            <!-- Status Message -->
            <div v-if="status" class="mb-4 text-center text-sm font-medium text-green-600">
                {{ status }}
            </div>

            <!-- Form -->
            <form @submit.prevent="submit" class="space-y-6">
                <!-- Email -->
                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
                    <input id="email" type="email"
                        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500"
                        v-model="form.email" required autofocus placeholder="Enter your email"
                        autocomplete="username" />
                    <div v-if="form.errors.email" class="mt-1 text-sm text-red-600">{{ form.errors.email }}</div>
                </div>

                <!-- Password -->
                <div>
                    <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                    <input id="password" type="password"
                        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500"
                        v-model="form.password" required placeholder="Enter your password"
                        autocomplete="current-password" />
                    <div v-if="form.errors.password" class="mt-1 text-sm text-red-600">{{ form.errors.password }}</div>
                </div>

                <!-- Remember Me -->
                <div class="flex items-center">
                    <input id="remember" type="checkbox"
                        class="h-4 w-4 text-blue-600 border-gray-300 rounded focus:ring-blue-500"
                        v-model="form.remember" />
                    <label for="remember" class="ml-2 text-sm text-gray-700">Remember me</label>
                </div>

                <!-- Actions -->
                <div class="flex items-center justify-between">
                    <button type="submit"
                        class="ml-auto bg-blue-600 text-white px-4 py-2 rounded-md shadow hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
                        :class="{ 'opacity-50 cursor-not-allowed': form.processing }" :disabled="form.processing">
                        Log in
                    </button>
                </div>
            </form>
        </div>
    </div>
</template>
