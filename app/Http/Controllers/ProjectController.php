<?php

namespace App\Http\Controllers;

use App\Models\Project;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class ProjectController extends Controller
{
    public function create(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'link' => 'nullable|url',
            'category_id' => 'required|numeric',
            'description' => 'nullable|string',
            'photo' => 'required|image|max:2048',
        ]);

        $validated['description'] = '';
        $validated['photo'] = '/storage/'.$request->file('photo')->store('photos', 'public');
        Project::create($validated);

        return redirect()->back()->with('success', 'Project created successfully.');
    }

    public function update(Request $request, Project $project)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'link' => 'nullable|url',
            'description' => 'nullable|string',
            'category' => 'required|array',
            'category.id' => 'required|numeric',
            'category.name' => 'required|string',
            'photo' => 'nullable|image|max:2048',
        ]);

        $new_data = [
            'name' => $validated['name'],
            'link' => $validated['link'],
            'category_id' => $validated['category']['id'],
        ];

        if ($request->hasFile('photo')) {
            // Check if the current photo path is a local storage path
            if ($project->photo && str_starts_with($project->photo, '/storage/')) {
                // Delete the old photo
                $local_path = str_replace('/storage/', '', $project->photo);
                Storage::disk('public')->delete($local_path);
            }

            // Handle case for external URLs (log for debugging if needed)
            if ($project->photo && ! str_starts_with($project->photo, '/storage/')) {
                // Example: Log the unexpected format for manual review
                Log::warning('Photo URL not deleted as it does not use local storage.', ['photo' => $project->photo]);
            }

            // Store the new photo
            $new_data['photo'] = '/storage/'.$request->file('photo')->store('photos', 'public');
        }

        // Update the project with new data
        $project->update($new_data);

        return redirect()->back()->with('success', 'Project updated successfully.');
    }

    public function delete(Project $project)
    {
        if ($project->photo && str_starts_with($project->photo, '/storage/')) {
            $local_path = str_replace('/storage/', '', $project->photo);
            Storage::disk('public')->delete($local_path);
        }
        $project->delete();
    }
}
