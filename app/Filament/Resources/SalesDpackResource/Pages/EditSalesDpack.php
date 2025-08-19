<?php

namespace App\Filament\Resources\SalesDpackResource\Pages;

use App\Filament\Resources\SalesDpackResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditSalesDpack extends EditRecord
{
    protected static string $resource = SalesDpackResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
