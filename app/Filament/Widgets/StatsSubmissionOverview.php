<?php

namespace App\Filament\Widgets;

use App\Models\Submission;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatsSubmissionOverview extends BaseWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make('Waiting', Submission::query()->where('status_id',2)->count()),
            Stat::make('Approved', Submission::query()->where('status_id',1)->count())
        ];
    }
}
