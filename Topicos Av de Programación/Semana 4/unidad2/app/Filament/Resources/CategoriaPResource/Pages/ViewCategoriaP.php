<?php

namespace App\Filament\Resources\CategoriaPResource\Pages;

use App\Filament\Resources\CategoriaPResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewCategoriaP extends ViewRecord
{
    protected static string $resource = CategoriaPResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\EditAction::make(),
        ];
    }
}
