<?php

namespace App\Filament\Resources\CustomerDpackResource\Pages;

use App\Filament\Resources\CustomerDpackResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditCustomerDpack extends EditRecord
{
    protected static string $resource = CustomerDpackResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
