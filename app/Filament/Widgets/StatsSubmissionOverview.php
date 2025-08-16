<?php

namespace App\Filament\Widgets;

use App\Models\{Submission,Vehicle};

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatsSubmissionOverview extends BaseWidget
{
    protected function getStats(): array
    {
        
        return [
            Stat::make('WAITING', Submission::query()->where('status_id',2)->count())
                ->color('primary')
                ->description('Pengajuan belum disetujui'),
        ];
    }
}
