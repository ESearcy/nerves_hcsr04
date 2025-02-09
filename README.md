Still doesn't seem to work. i'll keep fussing with it.

# Nerves_Hcsr04

A library to interface with the HC-SR04 ultrasonic distance sensor.

:warning: Linux based systems are not fast enough to keep up with the short modulation frequency of a GPIO based interfaces like the HC-SR04.

If you need more accurate measurements, especially over a longer period of time, you should look for an I2C based distance sensor.

![](https://user-images.githubusercontent.com/584259/108094296-f3003780-707e-11eb-9c36-3a5dd8a2e881.jpeg)

## Wiring
The HC-SR04 sensors has 4 pins. VCC and GND are a given.

ECHO is a input pin receiving the signal modulation when the measurement is completed.
TRIG is a output pin triggering the measurement process.

## Installation

The package can be installed by adding `es_hcsr04` to your list of dependencies in `mix.exs`:

Once the main git repo is updated, i can delete this one. but in the meantime, use this.
```elixir
def deps do
  [
    {:es_hcsr04, "~> 0.2.0"}
  ]
end
```

## Usage

```elixir
{:ok, pid} = Hcsr04.start_link([trigger: 18, echo: 24])
distance_in_mm = Hcsr04.read(pid)
```

---

Once published, the docs can
be found at [https://hexdocs.pm/es_hcsr04](https://hexdocs.pm/es_hcsr04).
