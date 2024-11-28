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
    <div class="w-screen h-screen flex flex-col justify-center items-center bg-blue-200">

        <div v-if="status" class="mb-4 font-medium text-sm text-green-600">
            {{ status }}
        </div>

        <form @submit.prevent="submit" class="p-5 bg-white rounded shadow-default">
            <div>
                <label for="email" value="Email" />

                <input id="email" type="email" class="mt-1 block w-full rounded appearance-none border-gray-400"
                    v-model="form.email" required autofocus placeholder="Email" autocomplete="username" />

                <div class="mt-2 text-sm">{{
                    form.errors.email }}</div>
            </div>

            <div class="mt-4">
                <label for="password" value="Password" />

                <input id="password" type="password" class="mt-1 block w-full rounded appearance-none border-gray-400"
                    v-model="form.password" required placeholder="Password" autocomplete="current-password" />
                <div class="mt-2 text-sm">{{
                    form.errors.password }}</div>
            </div>

            <div class="block mt-4">
                <label class="flex items-center">
                    <input type="checkbox" class="rounded-md border-gray-500" name="remember" v-model="form.remember" />
                    <span class="select-none ms-2 text-sm text-gray-600">Remember me</span>
                </label>
            </div>

            <div class="flex items-center justify-end mt-4">
                <!-- <Link
                    v-if="canResetPassword"
                    :href="route('password.request')"
                    class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
                >
                    Forgot your password?
                </Link> -->

                <button class="ms-4 bg-blue-400 px-4 py-2 rounded-sm select-none text-white"
                    :class="{ 'opacity-25': form.processing }" :disabled="form.processing">
                    Log in
                </button>
            </div>
        </form>
    </div>
</template>
