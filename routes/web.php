<?php

use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\ProjectController;
use App\Models\Category;
use App\Models\Project;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', function () {
    return Inertia::render('Index', [
        'projects' => Project::all(),
        'categories' => Category::all(),
    ]);
})->name('landing');
Route::get('/projects/{category}', function (Category $category) {
    return response()->json(
        $category->projects,
        200
    );
})->name('api.category');
Route::get('/projects/', function () {
    return response()->json(Project::all(), 200);
})->name('api.projects');

Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/dashboard/projects', function () {
        return Inertia::render('Dashboard/Project', [
            'projects' => Project::with('category')->get(),
            'categories' => Category::all(),
        ]);
    })->name('dashboard.projects');
    Route::post('/projects', [ProjectController::class, 'create'])->name('projects.create');
    Route::put('/projects/{project}', [ProjectController::class, 'update'])->name('projects.update');
    Route::delete('/projects/{project}', [ProjectController::class, 'delete'])->name('projects.delete');

    Route::get('/dashboard/categories', function () {
        return Inertia::render('Dashboard/Category', [
            'categories' => Category::all(),
        ]);
    })->name('dashboard.categories');
    Route::get('/dashboard/users', function () {
        return Inertia::render('Dashboard/UnderConstruction');
    })->name('dashboard.users');
    Route::post('/categories', [CategoriesController::class, 'create'])->name('categories.create');
    Route::put('/categories/{category}', [CategoriesController::class, 'update'])->name('categories.update');
    Route::delete('/categories/{category}', [CategoriesController::class, 'delete'])->name('categories.delete');
});

require __DIR__.'/auth.php';
