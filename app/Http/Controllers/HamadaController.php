<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;
use App\Exports\StudentExport;
use Maatwebsite\Excel\Facades\Excel;

class HamadaController extends Controller
{
    public function all_students()
    {
        $Student = Student::all();
        return $Student;
    }

    public function fileExport()
    {
        return Excel::download(new StudentExport, 'users-collection.xlsx');
    }
}
