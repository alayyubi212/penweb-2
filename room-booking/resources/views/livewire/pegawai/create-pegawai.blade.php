<div class="container mx-auto">
    <h1 class="text-2xl font-bold mb-4">Create pegawai</h1>
    <form wire:submit.prevent="save" class="space-y-4">
        <flux:input type="text" id="nip" wire:model.defer="nip" label="NIP pegawai" 
            placeholder="Masukkan NIP pegawai" required />
        <flux:input type="text"id="nama" wire:model.defer="nama" label="Nama pegawai"
            placeholder="Masukkan Nama pegawai" required />
        <flux:select
            id="unit_kerja_id" wire:model.defer="unit_kerja_id" label="unit kerja"
            placeholder="Pilih unit kerja"required>
            <flux:select.option value="Tersedia">Tersedia</flux:select.option>
            <flux:select.option value="Tidak Tersedia">Tidak
                Tersedia</flux:select.option>
            <flux:select.option value="Dibooking">Dibooking</flux:select.option>
            <flux:select.option
                value="Maintenance">Maintenance</flux:select.option>
        </flux:select>
        <flux:button
            type="submit"
            variant="primary">
            Save
        </flux:button>
    </form>
</div>