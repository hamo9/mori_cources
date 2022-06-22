<?php

namespace App\Exports;

use App\Http\Resources\studentResource;
use App\Models\Student;
use Maatwebsite\Excel\Concerns\FromCollection;

class StudentExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {


    //    return Student::all();
    return studentResource::collection(Student::all());


    }
}
