<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PatientResource\Pages;
use App\Filament\Resources\PatientResource\RelationManagers;
use App\Filament\Resources\PatientResource\RelationManagers\TreatmentsRelationManager;
use App\Models\Patient;
use Filament\Forms;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PatientResource extends Resource
{
    protected static ?string $model = Patient::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
                TextInput::make('name')->label('Patient Name:')->required(),
                DatePicker::make('date_of_birth')->maxDate(now())->required(),
                Select::make('owners_id')
                ->relationship('owners','name')
                ->searchable()
                ->preload()
                ->createOptionForm([
                    TextInput::make('name')->label('Owner Name:')->required(),
                    TextInput::make('phone')->label('Contact Phone:')->tel()->required(),
                    TextInput::make('address')->label('Address:'),
                    TextInput::make('email')->label('Contact Email:')->email()->required(),
                ])
                ->required(),
                Select::make('type')->options(
                    [
                        'cat' => 'Cat',
                        'dog' => 'Dog',
                        'hamster' => 'Hamster',
                        'rabbit' => 'Rabbit',
                        'parrot' => 'Parrot',
                        'goldfish' => 'Goldfish',
                        'turtle' => 'Turtle',
                        'guinea_pig' => 'Guinea Pig',
                        'ferret' => 'Ferret',
                        'canary' => 'Canary',
                        'horse' => 'Horse',
                        'snake' => 'Snake',
                        'gerbil' => 'Gerbil',
                        'chinchilla' => 'Chinchilla',
                        'lizard' => 'Lizard',
                        'budgerigar' => 'Budgerigar',
                        'mouse' => 'Mouse',
                        'hedgehog' => 'Hedgehog',
                        'tarantula' => 'Tarantula',
                        'fish' => 'Fish',
                        'german_shepherd' => 'German Shepherd',
                        'ferret' => 'Ferret',
                        'cockatiel' => 'Cockatiel',
                        'rabbit' => 'Rabbit',
                        'pony' => 'Pony',
                        'duck' => 'Duck',
                        'goat' => 'Goat',
                        'potbellied_pig' => 'Potbellied Pig',
                        'bearded_dragon' => 'Bearded Dragon',
                        'sugar_glider' => 'Sugar Glider',
                        'alpaca' => 'Alpaca',
                        'hermit_crab' => 'Hermit Crab',
                        'chameleon' => 'Chameleon',
                        'peacock' => 'Peacock',
                        'toucan' => 'Toucan',
                        'sloth' => 'Sloth',
                        'cockatoo' => 'Cockatoo',
                        'fox' => 'Fox',
                        'llama' => 'Llama',
                        'koala' => 'Koala',
                        'raccoon' => 'Raccoon',
                        'otter' => 'Otter',
                        'skunk' => 'Skunk',
                        'wallaby' => 'Wallaby',
                        'bunny' => 'Bunny',
                        'chipmunk' => 'Chipmunk',
                        'ferret' => 'Ferret',
                        'gecko' => 'Gecko',
                        'pony' => 'Pony'
                    ]
                )->searchable()->required()
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //
                TextColumn::make('id')->sortable()->label('Id_Patient'),
                TextColumn::make('owners.name')->searchable()->label('Owner Name'),
                TextColumn::make('owners.email')->searchable()->label('Contact Email'),
                TextColumn::make('name')->searchable()->label('Patient'),
                TextColumn::make('type')->searchable()->label('Specie'),
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
            TreatmentsRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPatients::route('/'),
            'create' => Pages\CreatePatient::route('/create'),
            'edit' => Pages\EditPatient::route('/{record}/edit'),
        ];
    }
}
