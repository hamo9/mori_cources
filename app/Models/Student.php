<?php

namespace App\Models;

use App\Models\Department;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Student extends Model
{
    protected $fillable = [
        'student_name',
        'email',
        'contact_no',
        'address',
        'department_id',
    ];

    public function department() : BelongsTo
    {
        return $this->belongsTo(Department::class,'department_id','id');
    }
}
