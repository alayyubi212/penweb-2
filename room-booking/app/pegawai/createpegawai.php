

namespace app\livewire\pegawai;
use Livewire\Component;
use Livewire\attributes\validate;


class createpegawai extends component
#[Validate('required|string|max:10')]
public string $kode = '';
#[Validate('required|string|max:100')]
public $nama = '';
#[Validate('required|string|max:50')]
public $unit_kerja_id = '';
public function save()
{
$this->validate();
Ruang::create([
'nip' => $this->kode,
'nama' => $this->nama,
'unit_kerja_id' => $this->unit_kerja_id,
]);
session()->flash('message', 'pegawai berhasil ditambahkan.');
// Reset the form fields
$this->redirectRoute('pegawai.index');