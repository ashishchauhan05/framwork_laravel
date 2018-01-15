<?php namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel {

	/**
	 * The Artisan commands provided by your application.
	 *
	 * @var array
	 */
	protected $commands = [
		'App\Console\Commands\Inspire',
		'App\Console\Commands\AppointmentReminder',
		'App\Console\Commands\CreateAttendanceSummary',
		//'App\Console\Commands\PaymentLinkStatus',
		'App\Console\Commands\AppointmentEditPermission',
		'App\Console\Commands\SweepUninstalledApp',
		'App\Console\Commands\MISMailer',
	];

	/**
	 * Define the application's command schedule.
	 *
	 * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
	 * @return void
	 */
	protected function schedule(Schedule $schedule)
	{
		$schedule->command('appointment_reminder')->cron('*/15 * * * *');
		$schedule->command('attendance_summary')->cron('0 1 * * *');
		$schedule->command('disallow_old_appointment_edit')->dailyAt('01:00');
		$schedule->command('sweep_uninstalled_app')->dailyAt('00:00');
		$schedule->command('mis_mailer')->dailyAt('21:00');
		//$schedule->command('disallow_old_appointment_edit')->everyMinute();
		//$schedule->command('payment_link_status')->cron('0 2,13 * * *');
	}

}
