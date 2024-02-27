<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProductResource\Pages;
use App\Filament\Resources\ProductResource\RelationManagers;
use App\Models\Product;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ProductResource extends Resource
{
    protected static ?string $model = Product::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
                Forms\Components\TextInput::make('name')
                ->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('price')
                ->numeric()
                ->required(),
                Forms\Components\TextInput::make('stock')
                ->numeric()
                ->required(),
                //Vamos a hacer una lista desplegable esta abre una tabla
                //y toma los datos de esa tabla para mostrar en una lista
                //el truco esta en la propiedad relationship se coloca el
                //nombre de la migration y el campo
                Forms\Components\Select::make('category_id')
                ->relationship('categories', 'name')
                ->searchable()
                ->preload()
                //Anexamos el modal este servira para crear un formulario
                //adicional que me permita crear categorias que aun no esten
                //registradas optimizando el tiempo
                //el truco esta en la propiedad createOptionForm
                ->createOptionForm([
                    Forms\Components\TextInput::make('name')
                    ->required()
                    ->label('Category Name')
                ])
                ->required()
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //
                Tables\Columns\TextColumn::make('name')
                ->label('Product Name')
                ->searchable()
                ->sortable(),
                Tables\Columns\TextColumn::make('price'),
                Tables\Columns\TextColumn::make('stock'),
                Tables\Columns\TextColumn::make('category_id')
                ->label('Category Name'),
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
            'index' => Pages\ListProducts::route('/'),
            'create' => Pages\CreateProduct::route('/create'),
            'edit' => Pages\EditProduct::route('/{record}/edit'),
        ];
    }
}
