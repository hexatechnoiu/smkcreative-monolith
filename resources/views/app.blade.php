<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" class="scroll-smooth duration-300">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title inertia>SMKN 2 Sumedang</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Scripts -->
    <noscript>
        <style>
            /* Default light theme */
            :root {
                --bg-color: #ffffff;
                --text-color: #1a202c;
                --accent-color: #4a90e2;
            }

            /* Dark theme */
            html.dark {
                --bg-color: #1a202c;
                --text-color: #ffffff;
                --accent-color: #63b3ed;
            }

            body {
                background-color: var(--bg-color);
                color: var(--text-color);
                font-family: 'Inter', sans-serif;
                line-height: 1.5;
            }

            a {
                color: var(--accent-color);
                text-decoration: none;
            }

            a:hover {
                text-decoration: underline;
            }

            .container {
                max-width: 640px;
                margin: 0 auto;
                padding: 1rem;
            }

            .btn {
                display: inline-block;
                padding: 0.75rem 1.5rem;
                font-size: 1rem;
                font-weight: 600;
                color: #ffffff;
                background-color: var(--accent-color);
                border-radius: 0.375rem;
                text-align: center;
            }

            .btn:hover {
                background-color: #3182ce;
            }

            .card {
                background-color: var(--bg-color);
                border: 1px solid rgba(0, 0, 0, 0.1);
                border-radius: 0.5rem;
                padding: 1.5rem;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }
        </style>
    </noscript>
    @routes
    @vite(['resources/js/app.js', "resources/js/Pages/{$page['component']}.vue"])
    @inertiaHead
</head>

<body class="font-sans antialiased min-h-screen">
    <noscript>
        <div class="container">
            <header class="text-center py-4">
                <h1 class="text-3xl font-bold">JavaScript Disabled</h1>
                <p class="text-gray-600 dark:text-gray-400">To see this website, please enable JavaScript in your browser settings.</p>
            </header>

            <main class="space-y-6">
                <div class="card">
                    <h2 class="text-xl font-semibold">Why Enable JavaScript?</h2>
                    <p>JavaScript powers the dynamic features of this website, ensuring an interactive experience.</p>
                </div>

                <div class="card">
                    <h2 class="text-xl font-semibold">How to Enable JavaScript</h2>
                    <p>Follow <a href="https://www.enable-javascript.com/" class="text-blue-500">these instructions</a> to enable JavaScript for your browser.</p>
                </div>

            </main>

            <footer class="text-center py-4">
                <p>&copy; 2024 DIV IT GRIDAS. All Rights Reserved.</p>
            </footer>
        </div>
    </noscript>
    @inertia
</body>

</html>