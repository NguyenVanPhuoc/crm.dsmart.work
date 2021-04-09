<?php

namespace App\Imports;

use App\Models\Equipment;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Maatwebsite\Excel\Concerns\WithValidation;

class EquipmentsImport implements ToCollection ,WithStartRow ,WithValidation
{   
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function startRow(): int
    {
        return 4;
    }
    

    public function rules(): array
    {
        return [
            // '2' => 'unique:equipments,serial'

        ];

    }

    public function customValidationMessages()
    {
        return [
            // '2.unique' => 'Trường serial đã tồn tại !',
        ];
    }


    public function collection(Collection $rows)
    {
        $equi_array  = array();
     
        foreach ($rows as $key => $row) {
            dd($rows);
            if($rows[$key][0] != null && $rows[$key][2] != null){
                $department_id = request('department_id');
                $row[7] = $department_id;

                $status = request('status');
                $row[12] = $status;
                    $res = Equipment::create([
                        'title' => $row[0],
                        'code' => $row[1],
                        'model' => $row[2],
                        'serial' => $row[3],
                        'manufacturer'=> $row[4],
                        'year_use' => $row[5],
                        'amount' => $row[6],
                        'department_id' => $row[7],
                        'note' => $row[8],
                        'year_manufacture' => $row[9],
                        'first_information' => $row[10],
                        'status' => $row[12],
                        'specificat' => $row[13],
                        'configurat' => $row[14],
                        'first_value' => $row[18],
                        'provider_id' => $row[19],
                    ]);     
                if($res) $equi_array[] = $res;
            }
        }
        return $equi_array;
    }
}
