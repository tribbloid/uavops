# Overview: stratosphere range extender

We intend to ship a minimalistic range extender component for fixed wing UAVs, it can be attached to a balloon to instantly grant 18+km of potential energy to the UAV with little or no adaptation

- potential energy has the highest energy density of all storage means
- micro gliders often have better gliding ratio thanks to structural rigidity & dynamic soaring, allowing developers to start from small prototypes and scale gradually and on-demand. In average case, fixed-wing under 1kg can be extended to reach 200km away without using its own fuel
- the capacity of launching balloons scales linearly or sub-linearly with their cost and logistic pressure, their sourcing are also highly available and decentralized
- despite various restrictions on UAV-reserved air space, emergency response services may bypass them to prevent loss of life and property, with some help of traffic negotiation protocols (ADS-B etc.)

# Minimally Viable Product

The component can be activated by releasing 2 clutches simultaneously, thus allowing some tetherable cord to straighten under its own tension, which pushes the drone away from the balloon. The component can be wirelessly configured to be activated by the ARM navigation light indicator of the drone flight control (PX4 use flashing blue light) or barometer reading. Telemetry should be considered out of the scope.

The component should only maintain its wireless ethernet uplink on the ground, for scalable & over-the-air (OTA) customisation and firmware upgrade. ESP32, with its OTA memory direct write capability and high energy efficiency, is one of the reference single-board computer that can run the above logic, however, their wireless uplinks should be considered less reliable.

As a mitigation, they can be connected in pairs using USB or I2C ports, if one of a pair failed sanity test after customisation or upgrade, it can be immediately rolled back by the other of the pair. This may eventually makes OTA write no longer required, and more system memory to be allocated to its main logic, as the interconnected pair can receive upgrade and supervise upload/rollback to the other while its own process is running.

Barometer & battery must be integrated on the same board, the board should be potted to have better IP rating

# Testing

A powered glider with full telemetry (MAVLink messages, video) under 250 gram should be used to test successful release from any altitude
