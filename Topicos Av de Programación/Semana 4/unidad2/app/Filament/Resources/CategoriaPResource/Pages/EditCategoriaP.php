<?php

namespace App\Filament\Resources\CategoriaPResource\Pages;

use App\Filament\Resources\CategoriaPResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditCategoriaP extends EditRecord
{
    protected static string $resource = CategoriaPResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
        ];
    }
}
