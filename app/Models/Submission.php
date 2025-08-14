<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Submission extends Model
{
    protected $fillable = [
        'vehicle_id',
        'submission',
        'submission_number',
        'amount',
        'status_id',
        'category_id',
        'submission_created_at',
        'submission_approved_at',
        'notes',
        'file_acc',
    ];

    public function vehicle()
    {
        return $this->belongsTo(Vehicle::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function status()
    {
        return $this->belongsTo(Status::class);
    }

    public function statusAprroved()
    {
        return $this->belongsTo(Status::class)->where('name','APPROVED')->count();
    }

    public function statusWaiting()
    {
        return $this->belongsTo(Status::class)->where('name','WAITING')->count();
    }

    protected static function booted()
    {
        static::creating(function ($submission) {
            // Ambil tanggal hari ini
            $date = now()->format('Ymd');

            // Cari nomor terakhir hari ini
            $lastSubmission = self::whereDate('created_at', now()->toDateString())
                ->orderBy('id', 'desc')
                ->first();

            $lastNumber = $lastSubmission ? intval(substr($lastSubmission->submission_number, -4)) : 0;

            // Increment
            $newNumber = str_pad($lastNumber + 1, 4, '0', STR_PAD_LEFT);

            // Set nomor pengajuan
            $submission->submission_number = "SUB-{$date}-{$newNumber}";
        });
    }
}
