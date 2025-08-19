<?php

namespace App\Filament\Resources\SalesDpackResource\Pages;

use App\Filament\Resources\SalesDpackResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSalesDpacks extends ListRecords
{
    protected static string $resource = SalesDpackResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
