<?php

namespace App\Livewire\pegawai;

use Livewire\Component;
use App\Models\Pegawai;

class ListRuang extends Component
{
    public function render()
    {
        return view('livewire.pegawai.list-pegawai', [
            'pegawai' => pegawai::all(),
        ]);
    }
}
