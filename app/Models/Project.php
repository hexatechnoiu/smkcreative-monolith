<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Project extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'status', 'description', 'link', 'category_id'];
    protected $with = ['category'];

    /**
     * Get the category that owns the Project
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class);
    }
    public function getCategoryNameAttribute(): ?string
    {
        return $this->category ? $this->category->name : null;
    }
}
