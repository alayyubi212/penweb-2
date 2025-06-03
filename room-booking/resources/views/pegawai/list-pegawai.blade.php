namespace app\Livewire\pegawai;
use Livewire\Component;
use app\models\pegawai;

class Listpegawai extends component
{
    public function render()
    {
        return view('livewire.pegawai.list-pegawai', [
            'pegawais' => pegawai::select('pegawai.*', 'unit_kerja.nama as nama_unit')
                ->join('unit_kerja','pegawai.unit_kerja_id' '=', 'unit_kerja.id')
                ->get(),
            ]);
}