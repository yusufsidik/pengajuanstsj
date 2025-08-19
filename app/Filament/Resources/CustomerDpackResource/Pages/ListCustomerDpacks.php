<?php

namespace App\Filament\Resources\CustomerDpackResource\Pages;

use App\Filament\Resources\CustomerDpackResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListCustomerDpacks extends ListRecords
{
    protected static string $resource = CustomerDpackResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
