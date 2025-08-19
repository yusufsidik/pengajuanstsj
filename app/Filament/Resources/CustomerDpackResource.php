<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CustomerDpackResource\Pages;
// use App\Filament\Resources\CustomerDpackResource\RelationManagers;
use App\Models\CustomerDpack;
// use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
// use Illuminate\Database\Eloquent\Builder;
// use Illuminate\Database\Eloquent\SoftDeletingScope;

use Filament\Forms\Components\{TextInput, Select, FileUpload};
// use Filament\Support\Enums\FontWeight;

use Filament\Tables\Columns\{TextColumn};

class CustomerDpackResource extends Resource
{
    protected static ?string $model = CustomerDpack::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationGroup = "Pengajuan";

    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                // relationship() param1 nama function relasi yg dibuat di model, param2 nama field yg akan ditampilkan
                Select::make('sales_id')
                    ->relationship('sales','sales_name')
                    ->required(), 
                TextInput::make('code_customer')
                    ->placeholder('LB000XXX')
                    ->required(),
                TextInput::make('name_owner')
                    ->placeholder('Type name here...')
                    ->required(),
                TextInput::make('shop_name')
                    ->placeholder('Type shop name here...')
                    ->required(),
                TextInput::make('address_home')
                    ->placeholder('Type address home here...')
                    ->required(),
                TextInput::make('address_shop')
                    ->placeholder('Type address home here...')
                    ->required(),
                TextInput::make('phone_number')
                    ->placeholder('08xxxxxxxxxx')
                    ->required(),
                TextInput::make('npwp')
                    ->default("-")
                    ->placeholder('Type npwp here...')
                    ->required(),
                TextInput::make('ktp')
                    ->placeholder('Type npwp here...')
                    ->required(),
                TextInput::make('discount')
                    ->inputMode('number')
                    ->placeholder('Type discount here... use dot (.) for decimal value. exp: 21.5')
                    ->required(),
                FileUpload::make('file_ktp')
                    ->acceptedFileTypes(['image/jpeg', 'image/jpg','image/png'])
                    ->maxSize(512)
                    ->openable()
                    ->downloadable()
                    ->label('Upload KTP. Format: jpeg/jpg/png Max: 2 MB')
                    ->nullable()
                    ->columnSpanFull(),
                FileUpload::make('file_npwp')
                    ->acceptedFileTypes(['image/jpeg', 'image/jpg','image/png'])
                    ->maxSize(512)
                    ->openable()
                    ->downloadable()
                    ->label('Upload NPWP. Format: jpeg/jpg/png Max: 2 MB')
                    ->nullable()
                    ->columnSpanFull(),
                FileUpload::make('file_mail')
                    ->acceptedFileTypes(['image/jpeg', 'image/jpg','image/png'])
                    ->maxSize(1024)
                    ->openable()
                    ->downloadable()
                    ->label('Upload Mail. Format: jpeg/jpg/png Max: 2 MB')
                    ->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('code_customer'),
                TextColumn::make('shop_name'),
                TextColumn::make('discount'),
                TextColumn::make('sales.sales_name'),
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
            'index' => Pages\ListCustomerDpacks::route('/'),
            'create' => Pages\CreateCustomerDpack::route('/create'),
            'edit' => Pages\EditCustomerDpack::route('/{record}/edit'),
        ];
    }
}
