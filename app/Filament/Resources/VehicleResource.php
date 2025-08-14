<?php

namespace App\Filament\Resources;

use App\Filament\Resources\VehicleResource\Pages;
// use App\Filament\Resources\VehicleResource\RelationManagers;
use App\Models\Vehicle;
// use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
// use Illuminate\Database\Eloquent\Builder;
// use Illuminate\Database\Eloquent\SoftDeletingScope;

use Filament\Forms\Components\{TextInput, Select, DatePicker};

use Filament\Tables\Columns\TextColumn;

class VehicleResource extends Resource
{
    protected static ?string $model = Vehicle::class;

    protected static ?string $navigationIcon = 'heroicon-o-truck';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('license_plate')->placeholder('Type division here...')->required(),
                Select::make('pic_id')->relationship('pic', 'name')->required(),
                TextInput::make('merk')->placeholder('Type merk here...')->required(),
                TextInput::make('model')->placeholder('Type model here...')->required(),
                TextInput::make('vehicle_number')->placeholder('Type here for vehicle number...')->required(),
                TextInput::make('engine_number')->placeholder('Type here for engine number...')->required(),
                DatePicker::make('date_tax_1_year')->required(),
                DatePicker::make('date_tax_5_year')->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('license_plate'),
                TextColumn::make('pic.name'),
                TextColumn::make('merk'),
                TextColumn::make('date_tax_1_year')->dateTime('d M Y'),
                TextColumn::make('date_tax_5_year')->dateTime('d M Y'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\DeleteAction::make(),
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
            'index' => Pages\ListVehicles::route('/'),
            'create' => Pages\CreateVehicle::route('/create'),
            'edit' => Pages\EditVehicle::route('/{record}/edit'),
        ];
    }
}
