<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SubmissionResource\Pages;
// use App\Filament\Resources\SubmissionResource\RelationManagers;
use App\Models\Submission;
// use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
// use Illuminate\Database\Eloquent\Builder;
// use Illuminate\Database\Eloquent\SoftDeletingScope;

use Filament\Forms\Components\{TextInput, Select, DatePicker, Textarea, FileUpload};
use Filament\Support\Enums\FontWeight;

use Filament\Tables\Columns\{TextColumn};


class SubmissionResource extends Resource
{
    protected static ?string $model = Submission::class;

    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    protected static ?string $navigationGroup = "Pengajuan";

    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('vehicle_id')
                    ->relationship('vehicle','license_plate')
                    ->required(),
                TextInput::make('submission')
                    ->placeholder('Type submission here...')
                    ->required(),
                TextInput::make('amount')
                    ->placeholder('Type amount here...')
                    ->inputMode('numeric')
                    ->required(),
                Select::make('status_id')
                    ->relationship('status','name')
                    ->required(),
                Select::make('category_id')
                    ->relationship('category','name')
                    ->required(),
                DatePicker::make('submission_created_at')
                    ->default(now())
                    ->required(),
                DatePicker::make('submission_approved_at')
                    ->nullable(),
                Textarea::make('notes')
                    ->default("-")
                    ->nullable(),
                FileUpload::make('file_acc')
                    ->acceptedFileTypes(['application/pdf', 'image/jpeg', 'image/jpg','image/png'])
                    ->maxSize(2048)
                    ->openable()
                    ->downloadable()
                    ->label('Upload file approval jika sudah ACC. Format: pdf/jpeg/jpg/png Max: 2 MB')
                    ->columnSpanFull()
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('submission_number')
                    ->color('primary')
                    ->weight(FontWeight::Bold)
                    ->copyable()
                    ->copyMessage('Submissioin number copied')
                    ->copyMessageDuration(1500)
                    ->searchable()
                    ->sortable(),
                TextColumn::make('vehicle.license_plate')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('submission'),
                TextColumn::make('status.name')
                    ->weight(FontWeight::Bold)
                    ->badge()
                    ->color(fn (string $state): string => match ($state){
                        'WAITING' => 'warning',
                        'APPROVED' => 'success',
                        'NOT APPROVED' => 'danger',
                        'BELUM DIBUAT' => 'gray',
                        'TUNGGU ESTIMASI' => 'gray',
                        'TUNGGU FOTO' => 'gray'
                    })
                    ->searchable()
                    ->sortable(),
                TextColumn::make('amount')
                    ->numeric()
                    ->searchable()
                    ->sortable(),
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
            ])
            ->emptyStateHeading('No submission yet')
            ->defaultPaginationPageOption(25);
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
            'index' => Pages\ListSubmissions::route('/'),
            'create' => Pages\CreateSubmission::route('/create'),
            'edit' => Pages\EditSubmission::route('/{record}/edit'),
        ];
    }
}
