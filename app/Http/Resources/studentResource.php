<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class studentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'name' => $this->student_name,
            'email' => $this->email,
            'contact_no' => $this->contact_no,
            'address' => $this->address,
            'year' => $this->year,
            'department' => $this->department->department_name,
        ];
    }
}
