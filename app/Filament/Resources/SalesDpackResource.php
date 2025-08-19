<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SalesDpackResource\Pages;
use App\Filament\Resources\SalesDpackResource\RelationManagers;
use App\Models\SalesDpack;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

use Filament\Forms\Components\{TextInput, Select, DatePicker, Textarea, FileUpload};
use Filament\Support\Enums\FontWeight;

use Filament\Tables\Columns\{TextColumn};

class SalesDpackResource extends Resource
{
    protected static ?string $model = SalesDpack::class;

    protected static ?string $navigationIcon = 'heroicon-o-users';

    protected static ?string $navigationGroup = "Settings";

    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('sales_name')->placeholder('Type name here...')->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('sales_name'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSalesDpacks::route('/'),
            'create' => Pages\CreateSalesDpack::route('/create'),
            'edit' => Pages\EditSalesDpack::route('/{record}/edit'),
        ];
    }
}
