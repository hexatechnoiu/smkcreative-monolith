<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProjectController;
use App\Models\Category;
use App\Models\Project;
use Illuminate\Foundation\Application;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', function () {
    return Inertia::render('Index', [
        'projects' => Project::all(),
        'categories' => Category::all(),
    ]);
});
Route::get('/projects/{category}', function (Category $category) {
    return  response()->json(
        $category->projects,
        200
    );
});
Route::get('/projects/', function () {
    return  response()->json(Project::all(), 200);
});

Route::get('/dashboard', function () {
    return Inertia::render('Dashboard/Project', [
        'projects' => Project::with('category')->get(),
        'categories' => Category::all(),
    ]);
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::post('/projects', [ProjectController::class, 'create'])->name('projects.create');
    Route::put('/projects/{project}', [ProjectController::class, 'update'])->name('projects.update');
    Route::delete('/projects/{project}', [ProjectController::class, 'delete'])->name('projects.delete');
});


require __DIR__ . '/auth.php';
