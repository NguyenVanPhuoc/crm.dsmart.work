<?php

namespace App\Imports;

use App\Models\Eqsupplie;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithStartRow;

class EqsuppliesImport implements ToCollection ,WithStartRow 
{   
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function startRow(): int
    {
        return 20;
    }
    
    public function collection(Collection $rows)
    {
        $equi_array  = array();
     
        foreach ($rows as $row) 
        {
            $res = Eqsupplie::create([
                'title' => $row[0],
            ]);
            if($res) $equi_array[] = $res;
        }
        return $equi_array;
    }
}
