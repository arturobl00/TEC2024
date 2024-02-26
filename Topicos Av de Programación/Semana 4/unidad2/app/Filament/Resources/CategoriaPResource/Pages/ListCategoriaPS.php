<?php

namespace App\Filament\Resources\CategoriaPResource\Pages;

use App\Filament\Resources\CategoriaPResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListCategoriaPS extends ListRecords
{
    protected static string $resource = CategoriaPResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
