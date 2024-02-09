<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Alumno;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Alumno>
 */
class AlumnoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Alumno::class;
    public function definition(): array
    {
        return [
            //
            'firstname'=> $this->faker->sentence(),
            'secondname'=> $this->faker->sentence(),
            'age'=> $this->faker->randomElement(['19', '20', '21', '22','23']),
        ];
    }
}
